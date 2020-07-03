# $OpenBSD: Makefile,v 1.32 2020/07/03 21:12:55 sthen Exp $

COMMENT=		Python Imaging Library (maintained fork of PIL)

MODPY_EGG_VERSION=	6.2.2
DISTNAME=		Pillow-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics
REVISION=		0

HOMEPAGE=		https://python-pillow.org/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes

WANTLIB=		freetype openjp2 jpeg lcms2 pthread tiff webp z \
			webpdemux webpmux \
			${MODPY_WANTLIB}

MODULES=		lang/python
MODPY_PYTEST=		Yes
MODPY_SETUPTOOLS=	Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		graphics/lcms2 \
			graphics/openjp2>=2.3.0p0 \
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
