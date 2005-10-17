# $OpenBSD: Makefile,v 1.13 2005/10/17 11:28:23 espie Exp $

COMMENT= 		"X11 toolkit, accessibility aids"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdeaccessibility-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION?=	3.4

LIB_DEPENDS=	kdecore.6,kresources,kwalletclient,ktexteditor,vcard,kabc,kutils,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell,artskde::x11/kde/libs3 \
		gstreamer-0.8.0.0::devel/gstreamer

FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c jpeg \
		m png pthread stdc++ util z iconv ogg esd intl \
		vorbisenc xml2 artsflow_idl audiofile ossaudio mad \
		vorbisfile qtmcop gmodule-2.0.0.0 gthread-2.0.0.0 \
		glib-2.0.0.0 soundserver_idl gobject-2.0.0.0 popt \
		kmedia2_idl artsflow vorbis mcop

.include <bsd.port.mk>
