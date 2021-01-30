---
author: ejk
categories:
- Geekery
date: 2012-03-02 18:12:02-06:00
layout: post
meta:
  _edit_last: '8673313'
  _wpas_done_fb: '1'
  _wpas_done_twitter: '1'
  publicize_results: a:2:{s:7:"twitter";a:1:{i:8560112;a:2:{s:7:"user_id";s:3:"ejk";s:7:"post_id";s:18:"175720171665764352";}}s:2:"fb";a:1:{i:722852376;a:2:{s:7:"user_id";s:9:"722852376";s:7:"post_id";s:17:"10150573956817377";}}}
  reddit: a:2:{s:5:"count";i:0;s:4:"time";i:1404625593;}
  tagazine-media: a:7:{s:7:"primary";s:0:"";s:6:"images";a:0:{}s:6:"videos";a:0:{}s:11:"image_count";s:1:"0";s:6:"author";s:7:"8673313";s:7:"blog_id";s:7:"8370333";s:9:"mod_stamp";s:19:"2012-03-02
    23:16:30";}
parent_id: '0'
password: ''
permalink: /2012/03/02/replacing-a-power-supply-fan/
published: true
status: publish
tags:
- antec aria
- DIY
- fan
- power supply
- psu
title: Replacing a Power Supply Fan
type: post
...
---

I have a homebuilt PC connected to our TV running [Windows Media Center](http://windows.microsoft.com/en-US/windows/products/windows-media-center "Windows Media Center") as a PVR. The [Antec Aria](http://www.silentpcreview.com/article146-page1.html) case is a nice design, small enough to fit in a media center, but still tall enough for full height expansion cards. One of the defining characteristics of the case is the custom power supply: only 300 watts, has a custom L-shape to fit in the back of the case, and has a nice big 120 mm cooling fan that helps cool the case as well as the power supply. I usually run it 24/7, as it has a low wattage processor and can be set to record TV at any time. But recently, that nice big fan started making some noises. I tried oiling it, but the noise persisted, and then it started chirping:

http://youtu.be/1gZFAqJWLgc?hd=1

I decided that I would try to replace the fan. How hard could it be? I knew it was a 120 mm fan, I could just [buy a new one](http://www.newegg.com/Product/Product.aspx?Item=N82E16835103091), take out the old one, and put the new one in its place. It turned out to be a little more involved than that.

*WARNING: Opening a power supply is dangerous. Even when unplugged, components inside may still hold damaging voltages that can discharge.*

Getting to the power supply itself required almost a full disassembly of the case. Once I removed it from the case and opened the screw holes, I found that the existing fan had a two wire connection to the power circuitry (red & black), with a third wire looped in to a monitoring line that ran outside the case which could be attached to the motherboard (blue). These three wires were bundled together so a simple unplug-the-old, plug-in-the-new replacement wasn't going to work. The two wire connection wouldn't fit the plug I had for the new fan anyway, so I decided to cut and connect the three lines. My new fan had all three wires as clear so I had to line up the adapter I had to find the sequence should be blue-red-black. I also don't have a soldering iron, so I used wire nuts and lots of electrical tape.

\[slideshow\]

It was a little tricky getting the supply back together with the extra wiring, making sure the fan could spin freely, but I got it. I put the case back together, and booted off the motherboard. The annoying chirping had been replaced with a soft whisper. Plus, now I had a little stylish red accent lighting in the back of my case:

http://youtu.be/tBcgD81cSbQ?hd=1

Hopefully, I'll be buying a new case and a new power supply before this fan goes bad.
