# $OpenBSD: Makefile,v 1.55 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT =		K Desktop Environment, addons
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeaddons-${VERSION}
PKGNAME =		${DISTNAME}p2
MODKDE_VERSION =	3.5.8

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	kdecore.>=6,kdnssd,knewstuff,DCOP,artskde,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmediaplayer,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
		SDL.>=1:sdl-*-!no_x11:devel/sdl \
		artsbuilder,artsgui,artsgui_idl,artsgui_kde,artsmidi_idl,artsmodules,artsmodulescommon,artsmoduleseffects,artsmodulesmixers,artsmodulessynth,noatun,noatuncontrols,noatuntags::x11/kde/multimedia3 \
		atlantic,atlantikui,kdegames::x11/kde/games3 \
		kateinterfaces,kateutils,konq,konqsidebarplugin::x11/kde/base3 \
		kabinterfaces::x11/kde/pim3 \
		gdk,gtk::x11/gtk+ \
		xmms::audio/xmms \
		lib/db4/db_cxx:db->=4,<5:databases/db/v4

# XXX no version number on noatunarts
#WANTLIB+=	noatunarts 

SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xi Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c glib glib-2.0 gmodule gmodule-2.0 \
		iconv intl jpeg kimproxy kmedia2_idl m mad mcop ogg \
		pcre pcreposix png pthread qtmcop sndio soundserver_idl \
		stdc++ usbhid util vorbis vorbisenc vorbisfile z \
		gthread-2.0 idn Xau Xdmcp fam rpcsvc Xrandr pthread-stubs xcb

.include <bsd.port.mk>
