# $OpenBSD: Makefile,v 1.1.1.1 2015/11/12 12:25:51 jca Exp $

COMMENT =		lightweight C library for fast bi-directional websockets

DISTNAME =		libwebsockets-1.5-chrome47-firefox41
PKGNAME =		libwebsockets-1.5

SHARED_LIBS =		websockets 0.0 # 5

CATEGORIES =		www

HOMEPAGE =		https://libwebsockets.org

MAINTAINER =		Adam Wolk <adam.wolk@tintagel.pl>

# LGPL2 + static link exception
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://git.libwebsockets.org/cgi-bin/cgit/libwebsockets/snapshot/

WANTLIB += 		crypto m ssl z

SEPARATE_BUILD =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DLWS_WITHOUT_TESTAPPS=ON

NO_TEST =		Yes

.include <bsd.port.mk>
