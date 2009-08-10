# $OpenBSD: Makefile,v 1.17 2009/08/10 06:31:42 kili Exp $

COMMENT= 		billiard game
CATEGORIES=		x11 x11/kde games
DISTNAME=		kbilliards-0.8.7b
PKGNAME=		${DISTNAME}p3

HOMEPAGE=		http://www.hostnotfound.it/kbilliards.php
MASTER_SITES=		http://www.hostnotfound.it/kbilliards/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 artsflow \
		artsflow_idl audiofile bz2 c fam glib-2.0 \
		gmodule-2.0 gthread-2.0 idn jpeg kmedia2_idl m mad \
		mcop ogg pcre png pthread pthread-stubs qt-mt qtmcop rpcsvc sndio \
		soundserver_idl stdc++ util vorbis vorbisenc \
		vorbisfile xcb z

MODULES=		x11/kde	devel/gettext

LIB_DEPENDS=		kdecore.>=6,kdesu,kdeui,DCOP,kdeprint,kio,kwalletclient,kdefx,artskde,kparts::x11/kde/libs3

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MODCONFIG_GUESS_DIRS+=	${MODKDE_CONFIG_GUESS_DIRS}
AUTOCONF_VERSION=	2.59
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

PORTHOME?=		${WRKDIR}

.include <bsd.port.mk>
