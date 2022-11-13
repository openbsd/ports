COMMENT =		C++ library implementing a BitTorrent client

MODPY_EGG_VERSION =	1.2.17
DISTNAME =		libtorrent-rasterbar-${MODPY_EGG_VERSION}
REVISION =		0

SHARED_LIBS +=  	torrent-rasterbar 6.0	# 10.0.0

CATEGORIES =		net devel

HOMEPAGE =		https://libtorrent.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_VERSION:C/\.//g}
WANTLIB += boost_system boost_system-mt crypto iconv m ssl

MASTER_SITES =		https://github.com/arvidn/libtorrent/releases/download/v${MODPY_EGG_VERSION}/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
# MODPY_SETUPTOOLS sets TEST_TARGET to `test', so reset it to `check'
TEST_TARGET =		check

BUILD_DEPENDS =		devel/libtool

LIB_DEPENDS =		converters/libiconv \
			devel/boost

# boost
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-python-binding \
			--enable-tests \
			--with-boost-system=boost_system-mt \
			--with-boost-python=boost_python${MODPY_VERSION:C/\.//g}-mt \
			--with-libiconv

# https://github.com/arvidn/libtorrent/issues/6468
CONFIGURE_ARGS +=	--with-cxx-standard=17

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

post-patch:
	${SUBST_CMD} ${WRKSRC}/Jamfile

pre-configure:
	sed -i 's,-Os,,g' ${WRKSRC}/configure

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

EGG =	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/libtorrent-*.egg
post-install:
	mv ${EGG}/libtorrent.${MODPY_PYC_MAGIC_TAG}so ${EGG}/..
	rm -rf ${EGG}

.include <bsd.port.mk>
