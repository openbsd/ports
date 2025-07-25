COMMENT =		C++ library implementing a BitTorrent client

V =			2.0.11
DISTNAME =		libtorrent-rasterbar-${V}
REVISION =		0

SHARED_LIBS +=		torrent-rasterbar 10.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_container-mt boost_graph-mt
WANTLIB += boost_python${MODPY_MAJORMINOR}-mt crypto m ssl

SITES =			https://github.com/arvidn/libtorrent/releases/download/v${V}/

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/libtool \
			devel/py-setuptools

LIB_DEPENDS =		devel/boost

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-Dpython-bindings=ON \
			-Dbuild_tests=ON

# everything (shared library, python module/bindings) except tests
ALL_TARGET =		torrent-rasterbar \
			python-libtorrent

# build whatever is left (+200 test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
