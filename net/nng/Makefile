COMMENT =	light-weight brokerless messaging library

V =		1.10.1
DISTNAME =	nng-${V}

DIST_TUPLE +=	github nanomsg nng v${V} .

SHARED_LIBS +=  nng                       0.0 # 0.0

CATEGORIES =	net devel

HOMEPAGE =	https://nng.nanomsg.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

COMPILER_LANGS =	c

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
