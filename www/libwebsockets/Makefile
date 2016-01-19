# $OpenBSD: Makefile,v 1.4 2016/01/19 15:17:15 sthen Exp $

COMMENT =		lightweight C library for fast bi-directional websockets

DISTNAME =		libwebsockets-1.6.0-chrome48-firefox42
PKGNAME =		libwebsockets-1.6
REVISION =		0

SHARED_LIBS =		websockets 1.0 # 6

CATEGORIES =		www

HOMEPAGE =		https://libwebsockets.org

MAINTAINER =		Adam Wolk <adam.wolk@tintagel.pl>

# LGPL2 + static link exception
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://git.libwebsockets.org/cgi-bin/cgit/libwebsockets/snapshot/

WANTLIB += 		crypto m pthread ssl z

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DLWS_WITHOUT_TESTAPPS=ON

NO_TEST =		Yes

.include <bsd.port.mk>
