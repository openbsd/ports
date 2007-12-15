# $OpenBSD: Makefile,v 1.41 2007/12/15 23:47:41 ajacoutot Exp $

COMMENT= 		some useless KDE applications
CATEGORIES=		x11 x11/kde games
VERSION=		3.5.8
DISTNAME=		kdetoys-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION?=	3.5.8

RUN_DEPENDS+=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS= 		kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kscreensaver,kutils,kwalletclient::x11/kde/libs3

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m pcre pcreposix png \
		pthread stdc++ util z iconv idn Xau Xdmcp fam rpcsvc intl

.include <bsd.port.mk>
