COMMENT =		C library implementing server and client side SSH
V =			0.11.1
DISTNAME =		libssh-${V}

SHARED_LIBS +=		ssh		4.3 # 4.8

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
SITES =			https://www.libssh.org/files/${V:R}/
EXTRACT_SUFX =		.tar.xz

# LGPL v2.1
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += crypto z

# see patches/patch-src_CMakeLists_txt /
# https://gitlab.com/libssh/libssh-mirror/-/issues/286
WANTLIB += pthread

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DUNIT_TESTING=ON \
			-DWITH_EXAMPLES=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
