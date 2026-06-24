# see https://github.com/d99kris/nchat/issues/76 and net/tdlib (bundled)
NOT_FOR_ARCHS =	i386 ${BE_ARCHS}

# no WhatsApp or Signal: https://github.com/d99kris/nchat/commit/f292853
COMMENT =	CLI Telegram client

GH_ACCOUNT =	d99kris
GH_PROJECT =	nchat
GH_TAGNAME =	v5.15.26

CATEGORIES =	net
MAINTAINER =	Mykyta Nazarenko <mykyta@nazarenko.sbs>

WANTLIB += ${COMPILER_LIBCXX} c crypto curses execinfo m magic
WANTLIB += png sqlite3 ssl z

# nchat:	MIT
# tdlib:	BSLv1.0
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gperf

LIB_DEPENDS =	databases/sqlite3 \
		devel/libmagic \
		graphics/png

CONFIGURE_ARGS =	-DCCACHE_FOUND=OFF \
			-DPHP_EXECUTABLE=OFF \
			-DCCACHE_PROGRAM=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

post-install:
	rm -f ${PREFIX}/lib/*.a

NO_TEST =	Yes

.include <bsd.port.mk>
