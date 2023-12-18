COMMENT =		C library implementing server and client side SSH
V =			0.10.6
DISTNAME =		libssh-${V}

SHARED_LIBS +=		ssh		4.2 # 4.8

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
SITES =			https://www.libssh.org/files/${V:R}/
EXTRACT_SUFX =		.tar.xz

# LGPL v2.1
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += crypto z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DUNIT_TESTING=ON \
			-DWITH_EXAMPLES=OFF

.include <bsd.port.mk>
