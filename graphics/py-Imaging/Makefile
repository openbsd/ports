# $OpenBSD: Makefile,v 1.60 2013/03/11 11:10:55 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		Python imaging library
COMMENT-examples=	example programs for the Python Imaging Library
COMMENT-bin=		binaries for the Python Imaging Library
COMMENT-docs=		documentation for the Python Imaging Library

MODPY_EGG_VERSION=	1.1.7
DISTNAME=		Imaging-${MODPY_EGG_VERSION}
PKGNAME-main=		py-${DISTNAME}
FULLPKGNAME-examples=	py-Imaging-examples-${MODPY_EGG_VERSION}
EPOCH-examples=		0
FULLPKGPATH-examples=	graphics/py-Imaging,-examples
PKGNAME-bin=		py-Imaging-bin-${MODPY_EGG_VERSION}
FULLPKGNAME-docs=	py-Imaging-docs-${MODPY_EGG_VERSION}
FULLPKGPATH-docs=	graphics/py-Imaging,-docs

REVISION-main=		8
REVISION-examples=	5
REVISION-bin=		6
REVISION-docs=		4

CATEGORIES=		graphics

HOMEPAGE=		http://www.pythonware.com/products/pil/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main=		freetype z jpeg>=62 lcms ${MODTK_WANTLIB} \
			${MODPY_WANTLIB}

MASTER_SITES=		http://effbot.org/media/downloads/

MODULES=		lang/python x11/tk

RUN_DEPENDS=		${MODPY_TKINTER_DEPENDS}
RUN_DEPENDS-bin=	${RUN_DEPENDS} \
			graphics/py-Imaging
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS-main=	graphics/jpeg \
			graphics/lcms \
			${MODTK_LIB_DEPENDS}

MULTI_PACKAGES= -main -examples -bin -docs

MODPY_ADJ_FILES=	Scripts/pil*.py

INCDIR=${PREFIX}/include/python${MODPY_VERSION}
post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/examples/py-Imaging
	${INSTALL_SCRIPT} ${WRKSRC}/Scripts/*.py \
		${PREFIX}/share/examples/py-Imaging
	${INSTALL_DATA} ${WRKSRC}/Scripts/README \
		${PREFIX}/share/examples/py-Imaging
	for file in ${WRKSRC}/Scripts/pil*.py; do \
		${INSTALL_SCRIPT} $$file ${PREFIX}/bin/`basename $$file .py`; \
	done
	${INSTALL_DATA_DIR} ${INCDIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/ImPlatform.h ${INCDIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/Imaging.h ${INCDIR}
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/doc/py-Imaging
	${INSTALL_SCRIPT} ${WRKSRC}/Docs/* ${PREFIX}/share/doc/py-Imaging

do-test: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${TEST_ENV} ${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
