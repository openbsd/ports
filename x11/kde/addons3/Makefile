# $OpenBSD: Makefile,v 1.68 2012/06/15 08:30:22 ajacoutot Exp $

COMMENT =		K Desktop Environment, addons
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
REVISION =		11
DISTNAME =		kdeaddons-${VERSION}
MODKDE_VERSION =	3.5.8

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

WANTLIB = ICE SDL>=1 SM X11 Xau Xdmcp Xext Xi Xrandr Xrender art_lgpl_2 \
	artsflow artsflow_idl audiofile c fam gdk glib glib-2.0 gmodule \
	gmodule-2.0 gthread-2.0 gtk idn jpeg kimproxy kmedia2_idl \
	lib/db4/db_cxx lib/kde3/DCOP lib/kde3/artsbuilder lib/kde3/artsgui \
	lib/kde3/artsgui_idl lib/kde3/artsgui_kde lib/kde3/artskde \
	lib/kde3/artsmidi_idl lib/kde3/artsmodules lib/kde3/artsmodulescommon \
	lib/kde3/artsmoduleseffects lib/kde3/artsmodulesmixers \
	lib/kde3/artsmodulessynth lib/kde3/atlantic lib/kde3/atlantikui \
	lib/kde3/kabc lib/kde3/kabinterfaces lib/kde3/kateinterfaces \
	lib/kde3/katepartinterfaces lib/kde3/kateutils lib/kde3/kdecore>=6 \
	lib/kde3/kdefx lib/kde3/kdegames lib/kde3/kdeprint lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kdnssd lib/kde3/khtml lib/kde3/kio \
	lib/kde3/kjs lib/kde3/kmediaplayer lib/kde3/knewstuff lib/kde3/konq \
	lib/kde3/konqsidebarplugin lib/kde3/kparts lib/kde3/kresources \
	lib/kde3/ktexteditor lib/kde3/kutils lib/kde3/kwalletclient \
	lib/kde3/noatun lib/kde3/noatuncontrols lib/kde3/noatuntags \
	lib/kde3/vcard m mad mcop ogg pcre pcreposix png pthread pthread-stubs \
	qtmcop rpcsvc sndio soundserver_idl stdc++ usbhid util vorbis \
	vorbisenc vorbisfile xcb xmms z

.include <bsd.port.mk>
