COMMENT =		C++ library implementing a BitTorrent client

V =			2.0.8
DISTNAME =		libtorrent-rasterbar-${V}

SHARED_LIBS +=  	torrent-rasterbar 8.0	# 10.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_MAJORMINOR}-mt crypto iconv
WANTLIB += m ssl

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/v${V}/

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-Dpython-bindings=ON \
			-Dbuild_tests=ON

# https://github.com/arvidn/libtorrent/issues/6468
CONFIGURE_ARGS +=	-DCMAKE_CXX_STANDARD=17

# everything (shared library, python module/bindings) except tests
ALL_TARGET =		torrent-rasterbar \
			python-libtorrent

# build whatever is left (+200 test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
