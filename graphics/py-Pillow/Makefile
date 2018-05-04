# $OpenBSD: Makefile,v 1.24 2018/05/04 09:54:41 jasper Exp $

COMMENT=		Python Imaging Library (maintained fork of PIL)

MODPY_EGG_VERSION=	5.1.0
DISTNAME=		Pillow-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics

HOMEPAGE=		http://python-pillow.org/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=   Yes

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes

WANTLIB=		freetype jpeg lcms2 pthread tiff webp z \
			webpdemux webpmux \
			${MODPY_WANTLIB}

MODULES=		lang/python

TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-nose${MODPY_FLAVOR}
RUN_DEPENDS=		${MODPY_RUN_DEPENDS}

LIB_DEPENDS=		graphics/lcms2 \
			graphics/libwebp

MODPY_SETUPTOOLS=	Yes

SUBST_VARS+=		INCL_DIR MODPY_FLAVOR
INCL_DIR=		${MODPY_INCDIR:S/${LOCALBASE}\///}

MODPY_DISTUTILS_BUILD=	build_ext --disable-jpeg2000

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/libImaging/{ImPlatform,Imaging}.h ${WRKINST}${MODPY_INCDIR}

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py --installed

.include <bsd.port.mk>
