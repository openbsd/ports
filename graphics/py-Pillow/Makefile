# $OpenBSD: Makefile,v 1.5 2014/08/25 20:15:28 landry Exp $

COMMENT-main=		Python Imaging Library (fork)
COMMENT-sane=		Python SANE module

MODPY_EGG_VERSION=	2.5.3
DISTNAME=		Pillow-${MODPY_EGG_VERSION}
PKGNAME-main=		py-${DISTNAME}
PKGNAME-sane=		py-sane-${MODPY_EGG_VERSION}
CATEGORIES=		graphics

HOMEPAGE=		https://github.com/python-imaging/Pillow

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=   Yes

MULTI_PACKAGES=		-main -sane

MASTER_SITES=		${MASTER_SITE_PYPI:=P/Pillow/}
EXTRACT_SUFX=		.zip

WANTLIB-main=		freetype jpeg lcms2 pthread tiff webp z \
			webpdemux webpmux \
			${MODPY_WANTLIB} ${MODTK_WANTLIB}

WANTLIB-sane=		pthread sane ${MODPY_WANTLIB}

MODULES=		lang/python \
			x11/tk

# ${MODPY_TKINTER_DEPENDS} appends ,tkinter to devel/setuptools too.
BUILD_DEPENDS=		lang/python/${MODPY_VERSION},-tkinter
TEST_DEPENDS=		${BUILD_PKGPATH}
RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			lang/python/${MODPY_VERSION},-tkinter

# Enable JPEG2000 support via openjpeg?
LIB_DEPENDS-main=	graphics/lcms2 \
			graphics/libwebp \
			${MODTK_LIB_DEPENDS}

RUN_DEPENDS-sane=	${BASE_PKGPATH},-main
LIB_DEPENDS-sane=	${MODPY_LIB_DEPENDS} \
			graphics/sane-backends

MODPY_SETUPTOOLS=	Yes

INCL_DIR=		${PREFIX}/include/python${MODPY_VERSION}

MODPY_ADJ_FILES=	Scripts/*.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Sane/setup.py

post-build:
	cd ${WRKSRC}/Sane && ${MODPY_BIN} setup.py build

post-install:
	cd ${WRKSRC}/Sane && \
		${MODPY_BIN} setup.py install --skip-build --root ${WRKINST}
	for s in ${WRKSRC}/Scripts/*.py; do \
		${INSTALL_SCRIPT} $$s ${PREFIX}/bin/`basename $$s .py`; \
	done
	${INSTALL_DATA_DIR} ${INCL_DIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/{ImPlatform,Imaging}.h ${INCL_DIR}

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py --installed

.include <bsd.port.mk>
