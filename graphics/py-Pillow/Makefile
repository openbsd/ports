# $OpenBSD: Makefile,v 1.13 2015/06/05 14:26:22 sthen Exp $

COMMENT=		Python Imaging Library (fork)

MODPY_EGG_VERSION=	2.8.1
DISTNAME=		Pillow-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics

HOMEPAGE=		http://python-pillow.github.io/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=   Yes

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
EXTRACT_SUFX=		.zip

WANTLIB=		freetype jpeg lcms2 pthread tiff webp z \
			webpdemux webpmux \
			${MODPY_WANTLIB} ${MODTK_WANTLIB}

MODULES=		lang/python \
			x11/tk

BUILD_DEPENDS=		${MODPY_TKINTER_DEPENDS}
TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-nose${MODPY_FLAVOR}
RUN_DEPENDS=		${MODPY_RUN_DEPENDS}

# Enable JPEG2000 support via openjpeg?
# Is Tk image support actually useful?
LIB_DEPENDS=		graphics/lcms2 \
			graphics/libwebp \
			${MODTK_LIB_DEPENDS}

MODPY_SETUPTOOLS=	Yes

MODPY_ADJ_FILES=	Scripts/*.py

SUBST_VARS+=		INCL_DIR MODPY_FLAVOR
INCL_DIR=		${MODPY_INCDIR:S/${LOCALBASE}\///}

post-install:
	for s in ${WRKSRC}/Scripts/*.py; do \
		${INSTALL_SCRIPT} $$s ${PREFIX}/bin/`basename $$s .py`; \
	done
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/{ImPlatform,Imaging}.h ${WRKINST}${MODPY_INCDIR}
.if ${FLAVOR:Mpython3}
	for s in ${PREFIX}/bin/*; do mv $$s $$s${MODPY_BIN_SUFFIX}; done
.endif

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py --installed

.include <bsd.port.mk>
