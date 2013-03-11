# $OpenBSD: Makefile,v 1.25 2013/03/11 11:07:39 espie Exp $

COMMENT= 		billiard game
CATEGORIES=		x11 x11/kde games
DISTNAME=		kbilliards-0.8.7b
REVISION =		7

HOMEPAGE=		http://www.hostnotfound.it/kbilliards.php
MASTER_SITES=		http://www.hostnotfound.it/kbilliards/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 artsflow \
		artsflow_idl audiofile bz2 c fam glib-2.0 \
		gmodule-2.0 gthread-2.0 idn jpeg kmedia2_idl m mad \
		mcop ogg pcre png pthread pthread-stubs qt-mt qtmcop rpcsvc \
		sndio soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile xcb z kdecore>=6 kdesu kdeui DCOP kdeprint \
		kio kwalletclient kdefx artskde kparts

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
