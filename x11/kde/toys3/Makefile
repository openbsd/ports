# $OpenBSD: Makefile,v 1.45 2009/08/27 19:44:38 ajacoutot Exp $

COMMENT = 		some useless KDE applications
CATEGORIES =		x11 x11/kde games
VERSION =		3.5.10
DISTNAME =		kdetoys-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION ?=	3.5.8

MODULES =		x11/kde devel/gettext

RUN_DEPENDS +=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 		kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kscreensaver,kutils,kwalletclient::x11/kde/libs3

SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m pcre pcreposix png \
		pthread stdc++ util z idn Xau Xdmcp fam rpcsvc \
		pthread-stubs xcb

.include <bsd.port.mk>
