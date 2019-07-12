# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:44 sthen Exp $

COMMENT=		Python tools for computational molecular biology

MODPY_EGG_VERSION=	1.66
DISTNAME=		biopython-${MODPY_EGG_VERSION}
CATEGORIES=		biology
REVISION=		2

HOMEPAGE=		http://www.biopython.org/

# BSD-like 
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}DIST/

MODULES=	lang/python

WANTLIB+=	${MODPY_WANTLIB} pthread

BUILD_DEPENDS=	devel/swig \
		math/py-numpy
RUN_DEPENDS=	math/py-numpy \
		print/py-reportlab

CFLAGS+=	-fPIC

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-biopython/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-biopython/
	${INSTALL_DATA} ${WRKSRC}/Doc/*.pdf ${PREFIX}/share/doc/py-biopython/
	cd ${WRKSRC}/Doc/examples; tar cf - * | \
		tar xf - -C ${PREFIX}/share/examples/py-biopython

do-test: fake
	@cd ${WRKSRC}/Tests && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
