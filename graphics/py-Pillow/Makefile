# $OpenBSD: Makefile,v 1.3 2014/04/06 21:10:19 sthen Exp $

COMMENT=		Python Imaging Library (fork)

MODPY_EGG_VERSION=	2.4.0
DISTNAME=		Pillow-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics

HOMEPAGE=		https://github.com/python-imaging/Pillow

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=P/Pillow/}
EXTRACT_SUFX=		.zip

WANTLIB=		freetype jpeg lcms2 pthread tiff webp z \
			${MODPY_WANTLIB} ${MODTK_WANTLIB}

MODULES=		lang/python \
			x11/tk

# ${MODPY_TKINTER_DEPENDS} appends ,tkinter to devel/setuptools too.
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/python/${MODPY_VERSION},-tkinter
LIB_DEPENDS=		graphics/lcms2 \
			graphics/libwebp \
			${MODTK_LIB_DEPENDS}

MODPY_SETUPTOOLS=	Yes

INCL_DIR=		${PREFIX}/include/python${MODPY_VERSION}

MODPY_ADJ_FILES=	Scripts/*.py

post-install:
	for s in ${WRKSRC}/Scripts/*.py; do \
		${INSTALL_SCRIPT} $$s ${PREFIX}/bin/`basename $$s .py`; \
	done
	${INSTALL_DATA_DIR} ${INCL_DIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/{ImPlatform,Imaging}.h ${INCL_DIR}

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
