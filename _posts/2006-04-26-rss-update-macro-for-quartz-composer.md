---
author: ejk
categories:
- Geekery
date: 2006-04-26 12:10:47-05:00
excerpt: 'The RSS feed functionality of apple''s Quartz Composer development tool
  has a lot of potential for creating dynamically generated information, but it leaves
  a little to be desired if you have data that is updating quickly. Quartz Composer''s
  RSS patch uses Safari''s RSS feed functions, which only get refreshed at a minimum
  of every 30 minutes. I''ve created a Custom Macro Patch that is similar to the standard
  Quartz Composer RSS Feed, but adds a "Duration" input that causes the RSS Feed to
  refresh after the specified time.


  I threw it together for an information display that needed to be updated quickly
  at an event. The safari update times were too long, but I noticed that If I specified
  a new URL for the RSS Feed module it would initiate a new download of the information.
  So all I needed a way to change the URL string without really changing where the
  RSS Feed was pointing.


  So what I hacked together was a function that adds a nonsense GET variable onto
  the URL string called "qcfoo", and set it as the value of a counter. Every web server
  that I''ve tried it on so far will just ignore the GET variable when it receives
  the request, but when the counter changes, the RSS Feed is refreshed in Quartz Composer.


  For example, when you feed in

  "http://www.apple.com/main/rss/hotnews/hotnews.rss",

  the URL string input for the RSS Feed patch really is "http://www.apple.com/main/rss/hotnews/hotnews.rss?qcfoo=1",
  then

  "http://www.apple.com/main/rss/hotnews/hotnews.rss?qcfoo=2", then

  "http://www.apple.com/main/rss/hotnews/hotnews.rss?qcfoo=3", etc.


  Not very pretty, but it works. I''m open to improvements.


  Note: You may need to "Right-Click, Save As" to download.'
layout: post
meta:
  _edit_last: '1'
  _oembed_16dc4f63a87ac2012ee689c6b0013992: '{{unknown}}'
  _oembed_28be3780e91fbb42fa107d829e39c3c2: '{{unknown}}'
  _oembed_29b90cc0e46a68eaec3210079af01dde: '{{unknown}}'
  _oembed_41f82a88ea9379f56ae6f736f8b51ef9: '{{unknown}}'
  _oembed_46a958a32de95b4af13d0674431a3950: '{{unknown}}'
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1329093302";}
parent_id: '0'
password: ''
permalink: /2006/04/26/rss-update-macro-for-quartz-composer/
published: true
status: publish
tags:
- dev
- quartzcomposer
- rss
title: RSS Update Macro for Quartz Composer
type: post
...
---

[![qc_rss](%7B%7B%20site.baseurl%20%7D%7D/assets/2006/04/135479492_f95862901e_o.gif){width="128" height="102"}](http://www.flickr.com/photos/ejk/135479492/ "Photo Sharing")The RSS feed functionality of apple's Quartz Composer development tool has a lot of potential for creating dynamically generated information, but it leaves a little to be desired if you have data that is updating quickly. Quartz Composer's RSS patch uses Safari's RSS feed functions, which only get refreshed at a minimum of every 30 minutes. I've created a Custom Macro Patch that is similar to the standard Quartz Composer RSS Feed, but adds a "Duration" input that causes the RSS Feed to refresh after the specified time.

I threw it together for an information display that needed to be updated quickly at an event. The safari update times were too long, but I noticed that If I specified a new URL for the RSS Feed module it would initiate a new download of the information. So all I needed a way to change the URL string without really changing where the RSS Feed was pointing.

So what I hacked together was a function that adds a nonsense GET variable onto the URL string called "qcfoo", and set it as the value of a counter. Every web server that I've tried it on so far will just ignore the GET variable when it receives the request, but when the counter changes, the RSS Feed is refreshed in Quartz Composer.

For example, when you feed in\
"http://www.apple.com/main/rss/hotnews/hotnews.rss",\
the URL string input for the RSS Feed patch really is "http://www.apple.com/main/rss/hotnews/hotnews.rss?qcfoo=1", then\
"http://www.apple.com/main/rss/hotnews/hotnews.rss?qcfoo=2", then\
"http://www.apple.com/main/rss/hotnews/hotnews.rss?qcfoo=3", etc.

Not very pretty, but it works. I'm open to improvements.

*Note: You may need to "Right-Click, Save As" to download.*
