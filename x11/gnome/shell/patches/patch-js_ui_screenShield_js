$OpenBSD: patch-js_ui_screenShield_js,v 1.2 2017/04/17 12:52:56 jasper Exp $

REVERT:
From ddea54a5398c123a4711243e55811c8ba26f8b85 Mon Sep 17 00:00:00 2001
From: Victor Toso <victortoso@redhat.com>
Date: Thu, 12 May 2016 09:25:49 +0200
Subject: ScreenShield: set LockedHint property from systemd

--- js/ui/screenShield.js.orig	Fri Apr  7 14:10:53 2017
+++ js/ui/screenShield.js	Mon Apr 17 13:24:41 2017
@@ -582,9 +582,6 @@ const ScreenShield = new Lang.Class({
         if (prevIsActive != this._isActive)
             this.emit('active-changed');
 
-        if (this._loginSession)
-            this._loginSession.SetLockedHintRemote(active);
-
         this._syncInhibitor();
     },
 
