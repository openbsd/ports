# $OpenBSD: Makefile,v 1.34 2006/11/04 23:58:11 espie Exp $

COMMENT= 		"some useless KDE applications"
CATEGORIES=		x11 x11/kde games
VERSION=		3.5.5
DISTNAME=		kdetoys-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION?=	3.5.3
LIB_DEPENDS= 		kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kscreensaver,kutils,kwalletclient::x11/kde/libs3

SEPARATE_BUILD=	flavored
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m pcre pcreposix png \
		pthread stdc++ util z iconv idn

.include <bsd.port.mk>
