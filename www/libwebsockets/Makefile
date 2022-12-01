COMMENT =		lightweight C library for fast bi-directional websockets

GH_ACCOUNT =		warmcat
GH_PROJECT =		libwebsockets
GH_TAGNAME =		v4.3.2
REVISION =		0

SHARED_LIBS =		websockets 10.0

CATEGORIES =		www

HOMEPAGE =		https://libwebsockets.org

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto pthread ssl uv

LIB_DEPENDS =		devel/libuv

MODULES =		devel/cmake

# -Werror fails on base-gcc
CONFIGURE_ARGS +=	-DDISABLE_WERROR=ON \
			-DLWS_WITHOUT_TESTAPPS=ON \
			-DLWS_WITHOUT_TEST_SERVER=ON \
			-DLWS_WITH_LIBUV=ON

NO_TEST =		Yes

.include <bsd.port.mk>
