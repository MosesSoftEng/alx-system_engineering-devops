#!/usr/bin/python3
"""Exports all users TODO list as a JSON file

From https://jsonplaceholder.typicode.com/users/1/todos
"""
import json
import requests
import sys

# Endpoints urls
api_url = 'https://jsonplaceholder.typicode.com/'
users_url = api_url + 'users'


def get_user_todos(id, username):
    todos_url = api_url + 'users/{}/todos'.format(id)

    # Request data
    todos = requests.get(todos_url).json()

    """Get user's todos
    Arguments:
        id (int): user id
        username (string): user username
    Returns:
        A list of todos
    """
    return [
        {
            "username": username,
            "task": todo.get('title'),
            "completed": todo.get('completed'),
        }
        for todo in todos]

# Disable module execution, only run directly
if __name__ == "__main__":

    # Request users data
    users = requests.get(users_url).json()

    # Process data
    json_data = [
        {
            user.get('id'): [
                get_user_todos(user.get('id'), user.get('username'))
            ]
        }
        for user in users
    ]

    # Write data to file
    with open('todo_all_employees.json', 'w') as json_file:
        json.dump(json_data, json_file)
