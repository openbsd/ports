# $OpenBSD: Makefile,v 1.24 2004/12/16 07:25:26 alek Exp $

COMMENT= 		"some useless KDE applications"
CATEGORIES=		x11 x11/kde games
VERSION=		3.3.2
DISTNAME=		kdetoys-${VERSION}
MODKDE_VERSION=		3.3.0
LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kscreensaver,kutils,kwalletclient::x11/kde/libs3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m pcre pcreposix png \
		pthread stdc++ util z

.include <bsd.port.mk>
