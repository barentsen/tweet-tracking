tweet-tracking
==============
Scripts for listening to keywords on Twitter.

Author: Geert Barentsen (www.geert.io)

Dependencies
------------
* tweepy
* tmux
* rotatelogs (from apache-utils)

Notes
-----
* OAuth will only work if the system clock is in sync with Twitter's time;
for this reason, 401 errors may be solved by running `ntpdate`.
