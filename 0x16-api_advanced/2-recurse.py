#!/usr/bin/python3
'''Script to get a list of subreddit post titles'''
import requests


def recurse(subreddit, post_titles=[], after='', count=0):
    '''Get list of subreddit post titles
    Arguments:
        subreddit (str): subreddit name
        hot_list (list): list of post titles
        after (str): id of last post
        count (int): count of previous posts
    Returns:
        list of post titles
    '''

    # Get data
    response = requests.request(
        'GET',
        'https://www.reddit.com/r/{}/hot.json?limit=100&after={}&count={}'.
        format(subreddit, after, count),
        headers={
            'User-Agent': 'my browser'
        },
        allow_redirects=False
    )

    # Check if successful
    if response.status_code == 200:
        # Get json data
        try:
            results = response.json().get('data')
            after = results.get('after')
            count = count + results.get('dist')

            [post_titles.append(
                    post.get('data').get('title')
                ) for post in results.get('children')]

            if after is None:
                return post_titles

            return recurse(subreddit, post_titles, after, count)
        except:
            pass
