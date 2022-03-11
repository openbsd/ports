COMMENT =		elegant unit testing framework for C

DISTNAME =		cmocka-1.1.3

SHARED_LIBS +=		cmocka                    0.3 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://cmocka.org/

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# Apache License v2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://cmocka.org/files/1.1/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DUNIT_TESTING=ON

.include <bsd.port.mk>
