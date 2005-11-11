# $OpenBSD: Makefile,v 1.5 2005/11/11 14:21:22 espie Exp $

CATEGORIES=	audio x11 x11/kde
COMMENT=	'music player for kde'

HOMEPAGE=	http://amarok.kde.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amarok/}
DISTNAME=	amarok-1.3.6
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS+=	lib/qt3/qt-mt.3.33::x11/qt3,mt \
		kdecore.6,DCOP,khtml,kwalletclient,kdefx,kdeprint,kutils,kdeui,kparts,artskde,kio,kdesu,kjs,knewstuff::x11/kde/libs3 \
		artsmodules,artsgui_kde,artsmodulesmixers,artsmodulescommon,artsgui,artsgui_idl,artsmidi_idl,artsmodulessynth,artsmoduleseffects,artsbuilder,::x11/kde/multimedia3 \
		konqsidebarplugin::x11/kde/base3 \
		tag.5.0:taglib->=1.4:audio/taglib \
		xmms::audio/xmms \
		gstreamer-0.8.0.0::devel/gstreamer

WANTLIB=	stdc++ Xext Xrender z ossaudio X11 util m Xi SM GL c \
		pthread ICE \
		iconv pcre vorbis esd xml2 glib-2.0.0.0 qtmcop mad audiofile \
		jpeg vorbisfile gmodule-2.0.0.0 gthread-2.0.0.0 \
		gobject-2.0.0.0 pcreposix popt vorbisenc kmedia2_idl \
		artsflow ogg mcop png soundserver_idl art_lgpl_2 intl \
		artsflow_idl 
		
# These come from xmms
WANTLIB+=	gtk gmodule gdk glib


SHARED_ONLY=Yes
MODULES=	x11/kde
MODKDE_LIBTOOL=		Yes
MODKDE_VERSION=		3.5
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS+=		LIBRESOLV=

BUILD_DEPENDS=		::devel/pkgconfig \
			::devel/gstreamer-plugins


PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes


.include <bsd.port.mk>
