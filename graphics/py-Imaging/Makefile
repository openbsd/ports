# $OpenBSD: Makefile,v 1.61 2013/03/11 22:57:13 fgsch Exp $

SHARED_ONLY=		Yes

COMMENT =		Python imaging library

MODPY_EGG_VERSION=	1.1.7
DISTNAME=		Imaging-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

REVISION =		9

CATEGORIES=		graphics

HOMEPAGE=		http://www.pythonware.com/products/pil/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		freetype jpeg>=62 lcms pthread z \
			${MODTK_WANTLIB} ${MODPY_WANTLIB}

MASTER_SITES=		http://effbot.org/media/downloads/

MODULES=		lang/python x11/tk

RUN_DEPENDS=		${MODPY_TKINTER_DEPENDS}
BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		graphics/lcms \
			${MODTK_LIB_DEPENDS}

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
