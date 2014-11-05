# $OpenBSD: Makefile,v 1.22 2014/11/05 11:43:59 sthen Exp $

SHARED_ONLY=		Yes
COMMENT=		Python tools for computational molecular biology

MODPY_EGG_VERSION=	1.50
DISTNAME=		biopython-${MODPY_EGG_VERSION}
REVISION =		4
CATEGORIES=		biology

HOMEPAGE=		http://www.biopython.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}DIST/

MODULES=	lang/python

WANTLIB+=	${MODPY_WANTLIB} pthread

BUILD_DEPENDS=	devel/swig \
		math/py-numpy
RUN_DEPENDS=	math/py-numpy \
		print/py-reportlab/reportlab
TEST_DEPENDS=	${RUN_DEPENDS}

CFLAGS+=	-fPIC

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-biopython/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-biopython/
	${INSTALL_DATA} ${WRKSRC}/Doc/*.txt ${PREFIX}/share/doc/py-biopython/
	cd ${WRKSRC}/Doc/examples; tar cf - * | \
		tar xf - -C ${PREFIX}/share/examples/py-biopython

do-test: fake
	@cd ${WRKSRC}/Tests && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
