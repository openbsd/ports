# XXX version 7.0.0 and up do not support python2 anymore;
# python3 support lives in graphics/py-Pillow
PORTROACH=		limit:^6\.

COMMENT=		Python Imaging Library (version for Python 2)

MODPY_EGG_VERSION=	6.2.2
DISTNAME=		Pillow-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics
REVISION=		3

HOMEPAGE=		https://python-pillow.org/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += freetype imagequant jpeg lcms2 openjp2 pthread tiff
WANTLIB += webp webpdemux webpmux z

MODPY_PI=		Yes

MODULES=		lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}
MODPY_PYTEST=		Yes
MODPY_SETUPTOOLS=	Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		graphics/lcms2 \
			graphics/openjp2>=2.3.0p0 \
			graphics/libimagequant \
			graphics/libwebp
TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH}

SUBST_VARS+=		INCL_DIR MODPY_FLAVOR
INCL_DIR=		${MODPY_INCDIR:S/${LOCALBASE}\///}

pre-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/libImaging/{ImPlatform,Imaging}.h ${WRKINST}${MODPY_INCDIR}

.include <bsd.port.mk>
