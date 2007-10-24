# $OpenBSD: Makefile,v 1.40 2007/10/24 21:52:18 espie Exp $

COMMENT= 		some useless KDE applications
CATEGORIES=		x11 x11/kde games
VERSION=		3.5.8
DISTNAME=		kdetoys-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION?=	3.5.8
LIB_DEPENDS= 		kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kscreensaver,kutils,kwalletclient::x11/kde/libs3

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m pcre pcreposix png \
		pthread stdc++ util z iconv idn Xau Xdmcp fam rpcsvc intl

.include <bsd.port.mk>
