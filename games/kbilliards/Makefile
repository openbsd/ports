# $OpenBSD: Makefile,v 1.26 2013/03/19 13:07:13 nigel Exp $

COMMENT= 		billiard game
CATEGORIES=		x11 x11/kde games
DISTNAME=		kbilliards-0.8.7b
REVISION =		8

HOMEPAGE=		http://www.hostnotfound.it/kbilliards.php
MASTER_SITES=		http://www.hostnotfound.it/kbilliards/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	DCOP FLAC ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2
WANTLIB +=	artsflow artsflow_idl artskde audiofile bz2 c expat fam 
WANTLIB +=	fontconfig freetype glib-2.0 gmodule-2.0 gthread-2.0 idn 
WANTLIB +=	kdecore>=6 kdefx kdeprint kdesu kdeui kio kmedia2_idl kparts
WANTLIB +=	kwalletclient m mad mcop ogg pcre png pthread pthread-stubs
WANTLIB +=	qt-mt qtmcop sndio soundserver_idl stdc++ util vorbis
WANTLIB +=	vorbisenc vorbisfile xcb z

MODULES=		x11/kde	devel/gettext

LIB_DEPENDS=		x11/kde/libs3

RUN_DEPENDS=		x11/gtk+2,-guic

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MODCONFIG_GUESS_DIRS+=	${MODKDE_CONFIG_GUESS_DIRS}
AUTOCONF_VERSION=	2.59
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

PORTHOME?=		${WRKDIR}

.include <bsd.port.mk>
