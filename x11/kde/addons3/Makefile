# $OpenBSD: Makefile,v 1.42 2006/09/18 12:19:40 espie Exp $

COMMENT=		"K Desktop Environment, addons"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.4
DISTNAME=		kdeaddons-${VERSION}
MODKDE_VERSION=		3.5.3

LIB_DEPENDS= kdecore.>=6,kdnssd,knewstuff,DCOP,artskde,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmediaplayer,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
	SDL.>=1:sdl-*-!no_x11:devel/sdl \
	artsbuilder,artsgui,artsgui_idl,artsgui_kde,artsmidi_idl,artsmodules,artsmodulescommon,artsmoduleseffects,artsmodulesmixers,artsmodulessynth,noatun,noatuncontrols,noatuntags::x11/kde/multimedia3 \
	atlantic,atlantikui,kdegames::x11/kde/games3 \
	kateinterfaces,kateutils,konq,konqsidebarplugin::x11/kde/base3 \
	kabinterfaces::x11/kde/pim3 \
	gdk,gtk::x11/gtk+ \
	xmms::audio/xmms \
	lib/db4/db_cxx::databases/db/v4

# XXX no version number on noatunarts

SEPARATE_BUILD=flavored

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

WANTLIB=	ICE SM X11 Xext Xi Xrender art_lgpl_2 artsflow artsflow_idl \
		audiofile c esd glib glib-2.0 gmodule gmodule-2.0 \
		iconv intl jpeg kimproxy kmedia2_idl m mad mcop ogg \
		ossaudio pcre pcreposix png pthread qtmcop soundserver_idl \
		stdc++ usbhid util vorbis vorbisenc vorbisfile z \
		gthread-2.0 idn
#WANTLIB+=	noatunarts 

.include <bsd.port.mk>
