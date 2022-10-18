#!/usr/bin/python3
"""Exports all todos as a JSON file

From https://jsonplaceholder.typicode.com/users/1/todos
"""
import json
import requests
import sys

# Endpoints urls
api_url = 'https://jsonplaceholder.typicode.com/'
users_url = api_url + 'users'
todos_url = api_url + 'todos'


def get_user_todos(id, username):
    """Get user's todos
    Arguments:
        id (int): user id
        username (string): user username
    Returns:
        A list of todos
    """
    todos = requests.get(todos_url, params={"userId": id}).json()

    return '[{}]'.format(", ".join(
        ['{{"username": "{}", "task": "{}", "completed": {}}}'.format(username, todo.get('title'), str(todo.get('completed')).lower())
            for todo in todos
        ]
        )
    )

# Disable module execution, only run directly
if __name__ == "__main__":

    # Request users data
    users = requests.get(users_url).json()

    # Process data
    json_data = [
        '"{}":{}'.format(user.get('id'), get_user_todos(user.get('id'), user.get('username')))
        for user in users
    ]

    json_data = json.loads("{" +", ".join(json_data) + "}")

    print(json_data)

    # # Write data to file
    with open('todo_all_employees.json', 'w') as json_file:
        json.dump(json_data, json_file)
