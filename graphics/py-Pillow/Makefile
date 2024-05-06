COMMENT=		Python Imaging Library (friendly fork of PIL)

MODPY_EGG_VERSION=	10.3.0
DISTNAME=		pillow-${MODPY_EGG_VERSION}
PKGNAME=		py-Pillow-${MODPY_EGG_VERSION}
CATEGORIES=		graphics
REVISION=		0

HOMEPAGE=		https://python-pillow.org/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE=	Yes

WANTLIB += freetype imagequant jpeg lcms2 openjp2 tiff
WANTLIB += webp webpdemux webpmux xcb z

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python
MODPY_PI=		Yes
# PyQt-related tests segfault
MODPY_PYTEST_ARGS=	--ignore test_qt_image_*.py
MODPY_PYBUILD=		setuptools
DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		graphics/lcms2 \
			graphics/openjp2>=2.3.0p0 \
			graphics/libimagequant \
			graphics/libwebp
TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH} \
			${MODPY_TKINTER_DEPENDS} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR}

SUBST_VARS+=		MODPY_FLAVOR
# fail if libs aren't found
MODPY_PYBUILD_ARGS=	-C tiff=enable -C xcb=enable
# can also use -C debug=true

pre-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/libImaging/{ImPlatform,Imaging}.h ${WRKINST}${MODPY_INCDIR}

.include <bsd.port.mk>
