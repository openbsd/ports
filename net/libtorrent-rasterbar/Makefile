# $OpenBSD: Makefile,v 1.14 2021/01/04 14:06:35 sthen Exp $

COMMENT =		C++ library implementing a BitTorrent client

MODPY_EGG_VERSION =	1.2.10
DISTNAME =		libtorrent-rasterbar-${MODPY_EGG_VERSION}
REVISION =		0

SHARED_LIBS +=  	torrent-rasterbar 3.0	# 10.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_VERSION:C/\.//g}-mt
WANTLIB += boost_system-mt crypto iconv m ssl

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/libtorrent-${MODPY_EGG_VERSION}/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost>=1.67.0

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_ARGS =	--enable-python-binding \
			--enable-tests \
			--with-boost-system=boost_system-mt \
			--with-boost-python=boost_python${MODPY_VERSION:C/\.//g}-mt \
			--with-libiconv
CONFIGURE_ENV +=	CPPFLAGS="-Wno-deprecated-declarations \
				  -Wno-macro-redefined \
				  -pthread" \
			PYTHON=${MODPY_DEFAULT_VERSION_3}
# python bindings setup.py need CXX
MAKE_ENV =		CC="${CC}" CXX="${CXX}"

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

pre-configure:
	sed -i 's,-Os,,g' ${WRKSRC}/configure

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
