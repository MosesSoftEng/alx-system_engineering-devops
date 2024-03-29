#!/usr/bin/python3
'''Script to get subreddit subscribers count'''
import requests


def number_of_subscribers(subreddit):
    '''Get number of subscribers for a subreddit
    Arguments:
        subreddit (str): subreddit name
    Returns:
        number of subscribers
    '''

    # Get data
    response = requests.request(
        'GET',
        'https://www.reddit.com/r/{}/about.json'.format(subreddit),
        headers={
            'User-Agent': 'my browser'
        },
        allow_redirects=False
    )

    # Check if successful
    if response.status_code == 200:
        # Get json data
        try:
            return(response.json().get('data').get('subscribers'))
        except:
            pass

    # Return 0 by default
    return(0)
