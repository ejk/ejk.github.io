---
author: ejk
categories:
- Geekery
date: 2007-05-07 09:42:41-05:00
excerpt: 'Since I started using a Mac with a built-in iSight, I''ve been changing
  my buddy icon every morning. It''s always a bit of a surprise how it comes out,
  because you only get 3 seconds to pose. Some of them were turning out pretty funny,
  and I wanted to be able to store and share them. So I wrote this automator script
  to upload the new picture to flickr using the email to flickr method.


  The keys to this project were:


  Buddy icons are stored in ~/Library/Images/iChat Recent Pictures/

  Automator can create and send a mail message with an attachment

  An Automator Workflow can be saved as a plugin, and run as a Folder Action whenever
  a file is added to the folder.



  This script is saved as a plug-in Folder Action on the ~/Library/Images/iChat Recent
  Pictures/ folder. When it sees a new file added to that folder, it copies it to
  ~/Pictures/Flickr Selfportraits/, then changes it from a TIFF to a JPEG, then attaches
  it to a new email in the Mail program, then sends off the email to flickr.


  Setup:


  Open the workflow in Automator.

  Customize the email details with your [http://flickr.com/account/uploadbyemail/|Flickr
  Upload by Email address], customize tags if desired, and choose an email account
  to send from.

  Save as a Plug-In, Plug-In for Folder Actions, Attached to Folder: ~/Library/Images/iChat
  Recent Pictures

  Change your buddy icon in Adium or iChat, and test it out!



  I''d like to be able to upload to flickr directly from the automator script instead
  of having to use the Upload by Email function, but I haven''t found anything that
  does that yet. I did find [http://fraserspeirs.livejournal.com/869471.html|this
  Automator Action], written by Fraser Speirs which does just that, but it''s not
  intel-friendly at the moment. Maybe I''ll offer to help him update it.


  Have fun, and please leave a comment if it works or doesn''t work. I''m new at releasing
  Automator workflows.


  Note:Apparently, an Automator workflow is really a folder, not a discrete file.
  I''ve zipped it up into an archive now for distribution. Drupal did NOT like trying
  to attach that.'
layout: post
meta:
  _edit_last: '1'
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1329093194";}
parent_id: '0'
password: ''
permalink: /2007/05/07/ichat2flickr-automator-action/
published: true
status: publish
tags:
- automator
- dev
- flickr
- fun
- ichat
title: ichat2flickr automator action
type: post
...
---

[![ichat2flickr.gif](%7B%7B%20site.baseurl%20%7D%7D/assets/2007/05/488177375_615ea11dab_o.gif){width="292" height="207"}](http://www.flickr.com/photos/ejk/488177375/ "Photo Sharing")Since I started using a Mac with a built-in iSight, I've been changing my buddy icon every morning. It's always a bit of a surprise how it comes out, because you only get 3 seconds to pose. Some of them were turning out pretty funny, and I wanted to be able to store and share them. So I wrote this automator script to upload the new picture to flickr using the email to flickr method.

The keys to this project were:

-   Buddy icons are stored in \~/Library/Images/iChat Recent Pictures/
-   Automator can create and send a mail message with an attachment
-   An Automator Workflow can be saved as a plugin, and run as a Folder Action whenever a file is added to the folder.

This script is saved as a plug-in Folder Action on the \~/Library/Images/iChat Recent Pictures/ folder. When it sees a new file added to that folder, it copies it to \~/Pictures/Flickr Selfportraits/, then changes it from a TIFF to a JPEG, then attaches it to a new email in the Mail program, then sends off the email to flickr.

**Setup:**

1.  Open the workflow in Automator.
2.  Customize the email details with your \[http://flickr.com/account/uploadbyemail/\|Flickr Upload by Email address\], customize tags if desired, and choose an email account to send from.
3.  Save as a Plug-In, Plug-In for Folder Actions, Attached to Folder: \~/Library/Images/iChat Recent Pictures
4.  Change your buddy icon in Adium or iChat, and test it out!

I'd like to be able to upload to flickr directly from the automator script instead of having to use the Upload by Email function, but I haven't found anything that does that yet. I did find \[http://fraserspeirs.livejournal.com/869471.html\|this Automator Action\], written by Fraser Speirs which does just that, but it's not intel-friendly at the moment. Maybe I'll offer to help him update it.

Have fun, and please leave a comment if it works or doesn't work. I'm new at releasing Automator workflows.

**Note:***Apparently, an Automator workflow is really a folder, not a discrete file. I've zipped it up into an archive now for distribution. Drupal did **NOT** like trying to attach that.*
