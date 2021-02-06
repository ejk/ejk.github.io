---
author: ejk
categories:
- Geekery
date: 2011-01-18 14:21:33-06:00
layout: post
meta:
  _edit_last: '8673313'
  _wpas_done_fb: '1'
  _wpas_done_twitter: '1'
  reddit: a:2:{s:5:"count";i:0;s:4:"time";i:1404624766;}
  twitter_cards_summary_img_size: a:7:{i:0;i:2022;i:1;i:1528;i:2;i:2;i:3;s:26:"width="2022"
    height="1528"";s:4:"bits";i:8;s:8:"channels";i:3;s:4:"mime";s:10:"image/jpeg";}
parent_id: '0'
password: ''
permalink: /2011/01/18/roll-your-own-steam-cloud-with-dropbox/
published: true
status: publish
tags:
- dropbox
- gaming
- kotor
- steam
title: Roll Your Own Steam Cloud with Dropbox
type: post
...
---

\[caption id="attachment_336" align="alignleft" width="300" caption="Steam running on multiple PCs"\][![Steam Client](/assets/2011/01/img_0697.jpg?w=300 "Steams"){.size-medium .wp-image-336 width="300" height="226"}](http://rhymeswithtoaster.com/2011/01/18/roll-your-own-steam-cloud-with-dropbox/img_0697/)\[/caption\]

The [Steam](http://store.steampowered.com/) gaming platform has a great feature called "Steam Cloud" for users with multiple computers that automatically synchronizes settings and saved games between your separate installs. You can save your Half-Life 2 game right before the big strider battle on your laptop and pick it up right at the same place when you fire up your desktop PC.

However, only a few games officially support this feature, meaning if you play one of the other games that isn't supported on multiple machines, you're officially out of luck. But by leveraging the power of [Dropbox](http://db.tt/w5bNg2R "Dropbox"), you can synchronize your unsupported games just as easily by moving the files to your dropbox and linking to them from the old location. Here's how I did it for the classic game Knights of the Old Republic, which isn't supported by steam cloud.

Make sure you have Dropbox, Steam, and the game installed on both PCs. Then find your saved games folder. For KotOR, it's located here:

    C:\Program Files\Steam\steamapps\common\swkotor\saves

You'll want to move the entire folder to your dropbox. Make sure you actually move it, not just copy it. You may want to create a new folder in your dropbox first just for game data to keep it clean. I put mine into a folder called Dropbox/Game Data/kotor. That will synchronize your save game files to all of your computers.

Next you'll want to create a link from the original location to the dropbox folder. Open a Command Prompt (Start -\> Accessories -\> Command Prompt) and create the link with the mklink command:

    mklink /J "C:\Program Files\Steam\steamapps\common\swkotor\saves"
    "C:\Users\Eric\Documents\Dropbox\Game Data\kotor\saves"

This will create a virtual link from your steam app folder to the one you just moved into your dropbox. As far as the game is concerned, the files are right where they are supposed to be.

Repeat this process on your other machines and when you save your game on one machine it'll be available on all of them for loading.

I've got Windows 7 installed on my machines so if you're using XP, Vista, or a Mac the instructions for creating links may vary. See [this article on the dropbox wiki](http://wiki.dropbox.com/TipsAndTricks/SyncOtherFolders "Sync Other Folders") for more details.

[Find out more about Steam](http://store.steampowered.com/ "Steam Store").

[Join Dropbox and effortlessly Sync data between your devices](http://db.tt/w5bNg2R).
