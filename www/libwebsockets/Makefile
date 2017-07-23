# $OpenBSD: Makefile,v 1.13 2017/07/23 21:43:45 awolk Exp $

COMMENT =		lightweight C library for fast bi-directional websockets

GH_ACCOUNT =		warmcat
GH_PROJECT =		libwebsockets
V =			2.2.2
GH_TAGNAME =		v$V

SHARED_LIBS =		websockets 7.0 # 10

CATEGORIES =		www

HOMEPAGE =		https://libwebsockets.org

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# LGPL2 + static link exception
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		crypto m ssl z

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DLWS_WITHOUT_TESTAPPS=ON

NO_TEST =		Yes

.include <bsd.port.mk>
