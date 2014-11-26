#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Sends JSON-formatted tweets related to meteors to stdout in real time

Author: Geert Barentsen (geert.io)
Inspired by: http://peter-hoffmann.com/2012/simple-twitter-streaming-api-access-with-python-and-oauth.html
"""
import sys
import tweepy
import secrets


class CustomStreamListener(tweepy.StreamListener):

    def on_data(self, data):
        print data
        return True

    def on_error(self, status_code):
        print >> sys.stderr, 'Encountered error with status code:', status_code
        return True # Don't kill the stream

    def on_timeout(self):
        print >> sys.stderr, 'Timeout...'
        return True # Don't kill the stream


if __name__ == '__main__':
    # Setup authentication
    auth = tweepy.OAuthHandler(secrets.CONSUMER_KEY, secrets.CONSUMER_SECRET)
    auth.set_access_token(secrets.ACCESS_KEY, secrets.ACCESS_SECRET)
    # Start listening to the streaming API
    sapi = tweepy.streaming.Stream(auth, CustomStreamListener())
    sapi.filter(track=["meteor", "meteors", "meteorite" , "meteorites",
                       "fireball", "fireballs" , "meteorwatch",
                       "meteoro", "meteoros", "meteorito", "meteoritos",
                       "метеор", "метеорит", "نيزك"], 
                stall_warnings=True)

