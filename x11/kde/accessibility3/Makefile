# $OpenBSD: Makefile,v 1.16 2006/01/13 22:49:54 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		kdeaccessibility-${VERSION}
PKGNAME=		${DISTNAME}p1
MODKDE_VERSION?=	3.5
SHARED_LIBS=		KTTSD_Lib	1.0 \
			kttsd		2.0

LIB_DEPENDS=	kdecore.6,kresources,kwalletclient,ktexteditor,vcard,kabc,kutils,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell,artskde::x11/kde/libs3 

FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c jpeg \
		m png pthread stdc++ util z iconv ogg esd intl \
		vorbisenc artsflow_idl audiofile ossaudio mad \
		vorbisfile qtmcop gmodule-2.0.0.0 gthread-2.0.0.0 \
		glib-2.0.0.0 soundserver_idl \
		kmedia2_idl artsflow vorbis mcop

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag disable-static
.include <bsd.port.mk>
