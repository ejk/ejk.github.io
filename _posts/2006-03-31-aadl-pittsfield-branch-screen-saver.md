---
author: ejk
categories:
- Geekery
date: 2006-03-31 11:07:56-06:00
excerpt: 'Movie #1 - Welcome Screen (mp4) :: Movie #2 - Book Display (mp4) :: Download




  About:

  Based on the foundation of the aadl_saver (below), I created a new screen saver
  to welcome patrons to the new Pittsfield Branch. It contains a welcome screen, listing
  of events, and multiple dynamic displays of New or Top Books (including cover images)
  from the AADL RSS feeds. Bonus geek points to anyone that can identify the application
  which influenced the overall look.'
layout: post
meta:
  _edit_last: '1'
  enclosure: 'http://bilbo.aadl.org/~kloostere/QC_Books.mp4

    992883

    video/mp4'
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1329092168";}
parent_id: '0'
password: ''
permalink: /2006/03/31/aadl-pittsfield-branch-screen-saver/
published: true
status: publish
tags:
- aadl
- dev
title: AADL Pittsfield Branch Screen Saver
type: post
...
---

[**Movie \#1 - Welcome Screen (mp4)**](http://bilbo.aadl.org/~kloostere/QC_Welcome.mp4) :: [**Movie \#2 - Book Display (mp4)**](http://bilbo.aadl.org/~kloostere/QC_Books.mp4) :: [**Download**](http://bilbo.aadl.org/~kloostere/greetsfield.qtz)

[![greetsfield_welcome](/assets/2006/03/116482218_d279cde301.jpg){width="500" height="313"}](http://www.flickr.com/photos/ejk/116482218/ "Photo Sharing")

**About:**\
Based on the foundation of the aadl_saver (below), I created a new screen saver to welcome patrons to the new [Pittsfield Branch](http://www.aadl.org/aboutus/pittsfieldbranch). It contains a welcome screen, listing of events, and multiple dynamic displays of New or Top Books (including cover images) from the AADL RSS feeds. Bonus geek points to anyone that can identify the application which influenced the overall look.\
\
**Requirements:**\
Apple Macintosh running OS X

**Installation instructions:**\
Place the .qtz file in \~/Library/Screen Savers (just for you) or /Library/Screen Savers (for everyone)

**Configuration options:**\
*Note: In order to make screen saver option changes "stick", click off the edited field before clicking "OK"*\
`Feeds` = The String containing all the Feeds you want the Screen Saver to display. Screens are Separated by the '\^' character, and Displayed Titles are separated from the URLs by the ';' character. *The first two Screens should remain hard-coded to "Welcome" and "Events".*

`Seconds per Title` = Number of seconds that each title will be displayed on the screen

[![greetsfield_books](/assets/2006/03/116482219_29ceda51c9.jpg){width="500" height="313"}](http://www.flickr.com/photos/ejk/116482219/ "Photo Sharing")

**Coding:**\
If you're interested, you can open the screen saver using \[w:Quartz Composer\]. You'll see all the fun I had figuring out exactly how to make those cover image thumbnails slide across the screen.
