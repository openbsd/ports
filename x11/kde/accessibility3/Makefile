# $OpenBSD: Makefile,v 1.33 2009/01/29 17:37:57 ajacoutot Exp $

COMMENT = 		X11 toolkit, accessibility aids
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeaccessibility-${VERSION}
PKGNAME =		${DISTNAME}p0
MODKDE_VERSION ?=	3.5.8
SHARED_LIBS +=	KTTSD_Lib            1.0      # .0.1
SHARED_LIBS +=	kttsd                2.0      # .1.0

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	kdecore.>=6,kresources,kwalletclient,ktexteditor,vcard,kabc,kutils,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell,artskde::x11/kde/libs3 

FLAVORS =	debug

SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xrender Xtst art_lgpl_2 c jpeg \
		m png pthread stdc++ util z iconv ogg esd intl \
		vorbisenc artsflow_idl audiofile ossaudio mad \
		vorbisfile qtmcop gmodule-2.0 gthread-2.0 \
		glib-2.0 soundserver_idl \
		kmedia2_idl artsflow vorbis mcop idn \
		Xau Xdmcp fam rpcsvc pcre

.include <bsd.port.mk>
