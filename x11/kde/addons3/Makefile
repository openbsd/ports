# $OpenBSD: Makefile,v 1.77 2015/05/05 17:00:20 sthen Exp $

COMMENT =		K Desktop Environment, addons
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
REVISION =		18
DISTNAME =		kdeaddons-${VERSION}
MODKDE_VERSION =	3.5.8

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic
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

WANTLIB += FLAC GL ICE SDL>=1 SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += art_lgpl_2 artsflow artsflow_idl audiofile avahi-client
WANTLIB += avahi-common c dbus-1 dns_sd drm expat fam fontconfig
WANTLIB += freetype gdk glapi glib glib-2.0 gmodule gmodule-2.0
WANTLIB += gthread-2.0 gtk idn jpeg kimproxy kmedia2_idl lcms
WANTLIB += lib/db4/db_cxx lib/kde3/DCOP lib/kde3/artsbuilder
WANTLIB += lib/kde3/artsgui lib/kde3/artsgui_idl lib/kde3/artsgui_kde
WANTLIB += lib/kde3/artskde lib/kde3/artsmidi_idl lib/kde3/artsmodules
WANTLIB += lib/kde3/artsmodulescommon lib/kde3/artsmoduleseffects
WANTLIB += lib/kde3/artsmodulesmixers lib/kde3/artsmodulessynth
WANTLIB += lib/kde3/atlantic lib/kde3/atlantikui lib/kde3/kabc
WANTLIB += lib/kde3/kabinterfaces lib/kde3/kateinterfaces
WANTLIB += lib/kde3/katepartinterfaces lib/kde3/kateutils
WANTLIB += lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdegames
WANTLIB += lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui
WANTLIB += lib/kde3/kdnssd lib/kde3/khtml lib/kde3/kio lib/kde3/kjs
WANTLIB += lib/kde3/kmediaplayer lib/kde3/knewstuff lib/kde3/konq
WANTLIB += lib/kde3/konqsidebarplugin lib/kde3/kparts
WANTLIB += lib/kde3/kresources lib/kde3/ktexteditor lib/kde3/kutils
WANTLIB += lib/kde3/kwalletclient lib/kde3/noatun
WANTLIB += lib/kde3/noatuncontrols lib/kde3/noatuntags lib/kde3/vcard m
WANTLIB += mad mcop mng ogg pcre pcreposix png pthread pthread-stubs
WANTLIB += qtmcop sndio soundserver_idl stdc++ usbhid util vorbis
WANTLIB += vorbisenc vorbisfile xcb xcb-dri2 xcb-glx xmms z

.include <bsd.port.mk>
