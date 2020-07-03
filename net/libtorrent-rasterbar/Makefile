# $OpenBSD: Makefile,v 1.10 2020/07/03 21:12:59 sthen Exp $

COMMENT =		C++ library implementing a BitTorrent client

MODPY_EGG_VERSION =	1.2.3
DISTNAME =		libtorrent-rasterbar-${MODPY_EGG_VERSION}
REVISION =		0

SHARED_LIBS +=  	torrent-rasterbar 2.0	# 10.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += boost_python3 boost_system-mt crypto m ssl
WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/libtorrent-${MODPY_EGG_VERSION:S/./_/g}/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-python-binding \
			--enable-tests \
			--with-boost-system=boost_system-mt \
			--with-boost-python=boost_python3 \
			--with-libiconv
CONFIGURE_ENV +=	CPPFLAGS="-Wno-deprecated-declarations \
				  -Wno-macro-redefined \
				  -pthread" \
			PYTHON_CXXFLAGS="${PYTHON_CXXFLAGS} -std=gnu++14" \
			PYTHON=${MODPY_DEFAULT_VERSION_3}
MAKE_ENV =		CC="${CC}" CXX="${CXX}"
CXXFLAGS +=		-std=gnu++14

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

pre-configure:
	sed -i 's,-Os,,g' ${WRKSRC}/configure

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
