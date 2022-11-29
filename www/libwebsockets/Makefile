COMMENT =		lightweight C library for fast bi-directional websockets

GH_ACCOUNT =		warmcat
GH_PROJECT =		libwebsockets
GH_TAGNAME =		v4.3.2

SHARED_LIBS =		websockets 10.0

CATEGORIES =		www

HOMEPAGE =		https://libwebsockets.org

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += 		crypto m pthread ssl z

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DLWS_WITHOUT_TESTAPPS=ON \
			-DLWS_WITHOUT_TEST_SERVER=ON

NO_TEST =		Yes

.include <bsd.port.mk>
