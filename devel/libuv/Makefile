COMMENT =	multi-platform library for asynchronous I/O

VER =		1.51.0
DISTNAME =	libuv-v${VER}
PKGNAME =	libuv-${VER}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  uv                   5.2      # 1.0

HOMEPAGE =	https://libuv.org/

SITES =		https://dist.libuv.org/dist/v${VER}/

# BSD
PERMIT_PACKAGE = Yes

WANTLIB += pthread

# stdatomic.h
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

DEBUG_PACKAGES = ${BUILD_PACKAGES}

CONFIGURE_STYLE = autoreconf
AUTORECONF =	./autogen.sh

AUTOCONF_VERSION = 2.71
AUTOMAKE_VERSION = 1.16

.include <bsd.port.mk>
