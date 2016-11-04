$OpenBSD: patch-js_ui_screenShield_js,v 1.1 2016/11/04 10:11:02 ajacoutot Exp $

REVERT:
From ddea54a5398c123a4711243e55811c8ba26f8b85 Mon Sep 17 00:00:00 2001
From: Victor Toso <victortoso@redhat.com>
Date: Thu, 12 May 2016 09:25:49 +0200
Subject: ScreenShield: set LockedHint property from systemd

--- js/ui/screenShield.js.orig	Fri Nov  4 10:55:41 2016
+++ js/ui/screenShield.js	Fri Nov  4 10:56:48 2016
@@ -576,9 +576,6 @@ const ScreenShield = new Lang.Class({
         if (prevIsActive != this._isActive)
             this.emit('active-changed');
 
-        if (this._loginSession)
-            this._loginSession.SetLockedHintRemote(active);
-
         this._syncInhibitor();
     },
 
