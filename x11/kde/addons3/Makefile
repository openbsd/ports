# $OpenBSD: Makefile,v 1.73 2014/03/23 09:21:30 espie Exp $

COMMENT =		K Desktop Environment, addons
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
REVISION =		15
DISTNAME =		kdeaddons-${VERSION}
MODKDE_VERSION =	3.5.8

# until the module/lib bug is fixed
USE_LIBTOOL =	gnu

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS = 	x11/kde/libs3 \
		sdl-*-!no_x11:devel/sdl \
		x11/kde/multimedia3 \
		x11/kde/games3 \
		x11/kde/base3 \
		x11/kde/pim3 \
		x11/gtk+ \
		audio/xmms \
		databases/db/v4

# XXX no version number on noatunarts
#WANTLIB+=	noatunarts 

SEPARATE_BUILD =	flavored

WANTLIB =	GL FLAC ICE SDL>=1 SM X11 Xcursor Xdamage Xext Xfixes
WANTLIB +=	Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB +=	artsflow artsflow_idl audiofile avahi-client avahi-common c
WANTLIB +=	dbus-1 dns_sd drm expat fam fontconfig freetype gdk glib
WANTLIB +=	glib-2.0 gmodule gmodule-2.0 gthread-2.0 gtk idn jpeg
WANTLIB +=	kimproxy kmedia2_idl lcms lib/db4/db_cxx lib/kde3/DCOP
WANTLIB +=	lib/kde3/artsbuilder lib/kde3/artsgui lib/kde3/artsgui_idl
WANTLIB +=	lib/kde3/artsgui_kde lib/kde3/artskde lib/kde3/artsmidi_idl
WANTLIB +=	lib/kde3/artsmodules lib/kde3/artsmodulescommon
WANTLIB +=	lib/kde3/artsmoduleseffects lib/kde3/artsmodulesmixers
WANTLIB +=	lib/kde3/artsmodulessynth lib/kde3/atlantic
WANTLIB +=	lib/kde3/atlantikui lib/kde3/kabc lib/kde3/kabinterfaces
WANTLIB +=	lib/kde3/kateinterfaces lib/kde3/katepartinterfaces
WANTLIB +=	lib/kde3/kateutils lib/kde3/kdecore>=6 lib/kde3/kdefx
WANTLIB +=	lib/kde3/kdegames lib/kde3/kdeprint lib/kde3/kdesu
WANTLIB +=	lib/kde3/kdeui lib/kde3/kdnssd lib/kde3/khtml lib/kde3/kio
WANTLIB +=	lib/kde3/kjs lib/kde3/kmediaplayer lib/kde3/knewstuff
WANTLIB +=	lib/kde3/konq lib/kde3/konqsidebarplugin lib/kde3/kparts
WANTLIB +=	lib/kde3/kresources lib/kde3/ktexteditor lib/kde3/kutils
WANTLIB +=	lib/kde3/kwalletclient lib/kde3/noatun
WANTLIB +=	lib/kde3/noatuncontrols lib/kde3/noatuntags lib/kde3/vcard m
WANTLIB +=	mad mcop mng ogg pcre pcreposix png pthread pthread-stubs
WANTLIB +=	qtmcop sndio soundserver_idl stdc++ usbhid util
WANTLIB +=	vorbis vorbisenc vorbisfile xcb xmms z

.include <bsd.port.mk>
