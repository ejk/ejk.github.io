---
author: ejk
categories:
- Geekery
date: 2007-11-16 22:29:00-06:00
excerpt: "I just installed an HTDV Wonder tuner card into my ubuntu MythTV box. So\
  \ while I watch a bit of a very pretty PBS program, I wanted to throw a couple of\
  \ notes here to remember what the heck I just did.\n\nMy myth box is running ubuntu\
  \ fiesty fawn. I debated whether or not to update to the latest version, gutsy gibbon,\
  \ before I installed the card, but it had taken a while to get the Video-out working\
  \ just right and I didn't want to rock the boat too much. Then I found the following\
  \ page, which helped tremendously:\n\n[http://www.mythtv.org/wiki/index.php/ATI_HDTV_Wonder]\n\
  \nLuckily, it had instructions for Fiesty Fawn, so I decided to go for it.\n\nI\
  \ shutdown, opened the card and physically installed the card in my last free PCI\
  \ slot. I followed the directions at the link above for manually setting up a perl\
  \ script to grab the firmware for the card (I had to sudo most of the commands to\
  \ get them to work, though). The firmware worked correctly and the drivers loaded\
  \ on the first try. So the card was recognized and loaded by the operating system,\
  \ that left configuring mythtv to actually tune something in on the card, which\
  \ is where I ran into problems.\n\nI followed the directions for setting up the\
  \ card in mythtv, but I couldn't tune any channels. There are two inputs on the\
  \ HDTV Wonder: \"DTV\" and \"CATV\". I wasn't sure which one to plug in my analog\
  \ cable connection. I believe the directions were for using an antenna, not for\
  \ tuning non-encrypted HD channels on the Cable connection. After a lot of trial\
  \ and error, I found a setting that actually tuned in some channels. I saved the\
  \ settings, went into myth, and I can now watch FOX HD, NBC HD, ABC HD, CBS HD,\
  \ and PBS HD for NO ADDITIONAL CHARGE on my comcast \"basic cable\" subscription,\
  \ not to mention some other local digital channels.\n\nHere's the changes from the\
  \ above instructions I had to find to tune HD channels on my basic analog cable,\
  \ plugging into the \"DTV\" port on the card:\n\n\n4. Input Connections\nNew Input\n\
  Select \"DVB : 0\"\n    Display Name:   ATI-HDTV\n    Video Source:   CABLE-HDTV\n\
  \    DVB Options:\n      Unencrypted channels only - checked!\n      Radio Channels\
  \ - checked!\n      Use Dish Long-term EIT Data - unchecked\n   Scan for Channels\n\
  \      Scan Type:                  Full Scan\n      Frequencey Table:          \
  \ Cable\n      ATSC Modulation:            Cable (QAM-64)\n      Channel Separator:\
  \          (5.1) Period\n      Existing Channel Treatment:  Minimal Updates"
layout: post
meta:
  delicious: a:3:{s:5:"count";s:1:"0";s:9:"post_tags";s:0:"";s:4:"time";s:10:"1270386598";}
  reddit: a:2:{s:5:"count";i:0;s:4:"time";i:1422172447;}
parent_id: '0'
password: ''
permalink: /2007/11/16/installing-hdtv-on-my-mythtv-pvr/
published: true
status: publish
tags:
- hdtv
- mythtv
- pvr
- ubuntu
- video
title: Installing HDTV on my MythTV PVR
type: post
...
Next \<--- The scanning process will take a long time! Verify the output, checking for "Locked" channels. Exit mythtvsetup with the Esc key The hard part was the channel scan. Now I just need to get the guide data set! ---

I just installed an HTDV Wonder tuner card into my ubuntu MythTV box. So while I watch a bit of a very pretty PBS program, I wanted to throw a couple of notes here to remember what the heck I just did.

My myth box is running ubuntu fiesty fawn. I debated whether or not to update to the latest version, gutsy gibbon, before I installed the card, but it had taken a while to get the Video-out working just right and I didn't want to rock the boat too much. Then I found the following page, which helped **tremendously**:

\[http://www.mythtv.org/wiki/index.php/ATI_HDTV_Wonder\]

Luckily, it had instructions for Fiesty Fawn, so I decided to go for it.

I shutdown, opened the card and physically installed the card in my last free PCI slot. I followed the directions at the link above for manually setting up a perl script to grab the firmware for the card (I had to sudo most of the commands to get them to work, though). The firmware worked correctly and the drivers loaded on the first try. So the card was recognized and loaded by the operating system, that left configuring mythtv to actually tune something in on the card, which is where I ran into problems.

I followed the directions for setting up the card in mythtv, but I couldn't tune any channels. There are two inputs on the HDTV Wonder: "DTV" and "CATV". I wasn't sure which one to plug in my analog cable connection. I believe the directions were for using an antenna, not for tuning non-encrypted HD channels on the Cable connection. After a lot of trial and error, I found a setting that actually tuned in some channels. I saved the settings, went into myth, and I can now watch FOX HD, NBC HD, ABC HD, CBS HD, and PBS HD for NO ADDITIONAL CHARGE on my comcast "basic cable" subscription, not to mention some other local digital channels.

Here's the changes from the above instructions I had to find to tune HD channels on my basic analog cable, plugging into the "DTV" port on the card:

` 4. Input Connections New Input Select "DVB : 0"     Display Name:   ATI-HDTV     Video Source:   CABLE-HDTV     DVB Options:       Unencrypted channels only - checked!       Radio Channels - checked!       Use Dish Long-term EIT Data - unchecked    Scan for Channels       Scan Type:                  Full Scan       Frequencey Table:           Cable       ATSC Modulation:            Cable (QAM-64)       Channel Separator:          (5.1) Period       Existing Channel Treatment:  Minimal Updates       Next  <--- The scanning process will take a long time!       Verify the output, checking for "Locked" channels. Exit mythtvsetup with the Esc key`

The hard part was the channel scan.

Now I just need to get the guide data set!
