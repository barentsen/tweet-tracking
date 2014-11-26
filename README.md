tweet-tracking
==============
Scripts for listening to keywords on Twitter.

These simple scripts do nothing more than harvesting JSON-formatted tweets
from the Twitter streaming API, and store them in daily text files for
future analysis.

Author: Geert Barentsen (www.geert.io)

Dependencies
------------
* tweepy
* tmux
* rotatelogs (from apache-utils)

Notes
-----
* OAuth will only work if the system clock is in sync with Twitter's time.
For this reason, 401 errors may be solved by running `ntpdate`.

