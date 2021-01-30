---
author: ejk
categories:
- Geekery
date: 2007-01-08 10:19:21-06:00
excerpt: "While working on a site (powered by [http://drupal.org/|drupal], of course),\
  \ I came to the location page, wherein I needed to place a map. I knew I could cut-n-paste\
  \ a static image of the location, then link it to either Google or Yahoo maps for\
  \ further activity, but I wanted something a little more interactive. So I checked\
  \ out the [http://developer.yahoo.com/|Yahoo! Developer Network] for their [http://developer.yahoo.com/maps/|maps\
  \ API], and sure enough, they had lots of cool tools for embedding their map software\
  \ in your code. I've been drinking the Yahoo! kool-aid ever since I signed up for\
  \ free email with them 8 years ago.\n\nI wanted an interactive map, but I didn't\
  \ want to have to code up a separate flash or AJAX application and upload it. That's\
  \ when I found their [http://developer.yahoo.com/maps/flash/jsGettingStarted.html|JS-Flash\
  \ API]. You call a little bit of javascript in your page, and it loads a flash application\
  \ hosted by Yahoo! into a div on your page. It was perfect. All you have to do is\
  \ sign up for a free [https://developer.yahoo.com/wsregapp/index.php|Yahoo Developer\
  \ Application ID].\n\nAfter playing around a little bit, I was able to embed all\
  \ of the code that I needed right into a drupal page, no external module coding\
  \ needed. So I could put a highly interactive and customized map into the page just\
  \ by putting code into drupal's web-based page creation form. No FTP, no SSH, no\
  \ installing and configuring modules, just cut-n-paste into a form.\n\nHere's the\
  \ code I came up with. The important thing is that you set your input format as\
  \ \"PHP\" because we need to use a function to put a bit of javascript in the <head>\
  \ section of the page. Also, make sure you replace the appid portion with your personal\
  \  AppID.\n\n\n<?php\ndrupal_set_html_head('\n\n\n#mapContainer {\n  height: 400px;\n\
  \  width: 400px;\n}\n');\n?>\n\n\n\n\n\n// Create and display Map object at the\
  \ address and with zoom level 3.\nvar map = new Map(\"mapContainer\", \"ejk_apps\"\
  ,\n  \"1201 S. Main, Ann Arbor, MI 48104\", 3);\n\n// Add navigation and viewing\
  \ tools\nmap.addTool( new PanTool(), true );\nmap.addWidget(new SatelliteControlWidget());\n\
  map.addWidget(new NavigatorWidget());\n\n// Add the POI marker to the map and display\
  \ it\nmarker1 = new CustomPOIMarker( 'Michigan Stadium', '',\n  '1201 S. Main\\\
  nAnn Arbor, MI 48104', '0xFF0000', '0xFFFFFF');\nmap.addMarkerByAddress( marker1,\
  \ \"1201 S. Main, Ann Arbor, MI 48104\");\n\n\n\n\nAnd here's what it looks like:\n\
  \n<?php\ndrupal_set_html_head('\n\n\n#mapContainer {\n  height: 400px;\n  width:\
  \ 400px;\n}\n');\n?>\n\n\n\n\n\n// Create and display Map object at the address\
  \ and with zoom level 3.\nvar map = new Map(\"mapContainer\", \"ejk_apps\",\n  \"\
  1201 S. Main, Ann Arbor, MI 48104\", 3);\n\n// Add navigation and viewing tools\n\
  map.addTool( new PanTool(), true );\nmap.addWidget(new SatelliteControlWidget());\n\
  map.addWidget(new NavigatorWidget());\n\n// Add the POI marker to the map and display\
  \ it\nmarker1 = new CustomPOIMarker( 'Michigan Stadium', '',\n  '1201 S. Main\\\
  nAnn Arbor, MI 48104', '0xFF0000', '0xFFFFFF');\nmap.addMarkerByAddress( marker1,\
  \ \"1201 S. Main, Ann Arbor, MI 48104\");\n\n\n\nI thought I should wrap some of\
  \ this up into a module, but when I looked, [http://drupal.org/project/ymap|someone\
  \ had already done it]. I'll have to check it out."
layout: post
meta:
  _edit_last: '1'
  _oembed_abb5e4029f814a4d1b91a225569a8311: '{{unknown}}'
  reddit: a:2:{s:5:"count";s:1:"0";s:4:"time";s:10:"1329092142";}
parent_id: '0'
password: ''
permalink: /2007/01/08/embedding-yahoo-maps/
published: true
status: publish
tags:
- dev
- drupal
- maps
- yahoo
title: Embedding Yahoo Maps
type: post
...
---

While working on a site (powered by \[http://drupal.org/\|drupal\], of course), I came to the location page, wherein I needed to place a map. I knew I could cut-n-paste a static image of the location, then link it to either Google or Yahoo maps for further activity, but I wanted something a little more interactive. So I checked out the \[http://developer.yahoo.com/\|Yahoo! Developer Network\] for their \[http://developer.yahoo.com/maps/\|maps API\], and sure enough, they had lots of cool tools for embedding their map software in your code. I've been drinking the Yahoo! kool-aid ever since I signed up for free email with them 8 years ago.

I wanted an interactive map, but I didn't want to have to code up a separate flash or AJAX application and upload it. That's when I found their \[http://developer.yahoo.com/maps/flash/jsGettingStarted.html\|JS-Flash API\]. You call a little bit of javascript in your page, and it loads a flash application hosted by Yahoo! into a div on your page. It was perfect. All you have to do is sign up for a free \[https://developer.yahoo.com/wsregapp/index.php\|Yahoo Developer Application ID\].

After playing around a little bit, I was able to embed all of the code that I needed right into a drupal page, no external module coding needed. So I could put a highly interactive and customized map into the page just by putting code into drupal's web-based page creation form. No FTP, no SSH, no installing and configuring modules, just cut-n-paste into a form.

Here's the code I came up with. The important thing is that you set your input format as "PHP" because we need to use a function to put a bit of javascript in the \<head\> section of the page. Also, make sure you replace the appid portion with your personal AppID.

\<?php\
drupal_set_html_head('

\#mapContainer {\
height: 400px;\
width: 400px;\
}\
');\
?\>

::: {#mapContainer}
:::

// Create and display Map object at the address and with zoom level 3.\
var map = new Map("mapContainer", "ejk_apps",\
"1201 S. Main, Ann Arbor, MI 48104", 3);

// Add navigation and viewing tools\
map.addTool( new PanTool(), true );\
map.addWidget(new SatelliteControlWidget());\
map.addWidget(new NavigatorWidget());

// Add the POI marker to the map and display it\
marker1 = new CustomPOIMarker( 'Michigan Stadium', '',\
'1201 S. Main\\nAnn Arbor, MI 48104', '0xFF0000', '0xFFFFFF');\
map.addMarkerByAddress( marker1, "1201 S. Main, Ann Arbor, MI 48104");

And here's what it looks like:

\<?php\
drupal_set_html_head('

\#mapContainer {\
height: 400px;\
width: 400px;\
}\
');\
?\>

::: {#mapContainer}
:::

// Create and display Map object at the address and with zoom level 3.\
var map = new Map("mapContainer", "ejk_apps",\
"1201 S. Main, Ann Arbor, MI 48104", 3);

// Add navigation and viewing tools\
map.addTool( new PanTool(), true );\
map.addWidget(new SatelliteControlWidget());\
map.addWidget(new NavigatorWidget());

// Add the POI marker to the map and display it\
marker1 = new CustomPOIMarker( 'Michigan Stadium', '',\
'1201 S. Main\\nAnn Arbor, MI 48104', '0xFF0000', '0xFFFFFF');\
map.addMarkerByAddress( marker1, "1201 S. Main, Ann Arbor, MI 48104");

I thought I should wrap some of this up into a module, but when I looked, \[http://drupal.org/project/ymap\|someone had already done it\]. I'll have to check it out.
