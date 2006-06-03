# $OpenBSD: Makefile,v 1.31 2006/06/03 12:47:31 espie Exp $

COMMENT= 		"some useless KDE applications"
CATEGORIES=		x11 x11/kde games
VERSION=		3.5.3
DISTNAME=		kdetoys-${VERSION}
MODKDE_VERSION=		3.5.3
LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kscreensaver,kutils,kwalletclient::x11/kde/libs3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m pcre pcreposix png \
		pthread stdc++ util z iconv idn

.include <bsd.port.mk>
