# $OpenBSD: Makefile,v 1.13 2009/01/03 21:27:25 kili Exp $

SHARED_ONLY=	Yes
COMMENT=	Python tools for computational molecular biology

DISTNAME=	biopython-1.44
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	biology

HOMEPAGE=	http://www.biopython.org/

MAINTAINER=	Will Maier <willmaier@ml1.net>

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}DIST/

MODULES=	lang/python
PY_FLAVOR=	python${MODPY_VERSION}

WANTLIB+=	stdc++

BUILD_DEPENDS=	::math/py-Numeric \
		::devel/swig
RUN_DEPENDS=	:py-mxDateTime-*-${PY_FLAVOR}:devel/py-mxDateTime,${PY_FLAVOR} \
		:py-Numeric-*:math/py-Numeric \
		:py-reportlab-*:print/py-reportlab/reportlab
REGRESS_DEPENDS=${RUN_DEPENDS}

CFLAGS+=	-fPIC

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-biopython/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-biopython/
	${INSTALL_DATA} ${WRKSRC}/Doc/*.txt ${PREFIX}/share/doc/py-biopython/
	cd ${WRKSRC}/Doc/examples; tar cf - * | \
		tar xf - -C ${PREFIX}/share/examples/py-biopython

do-regress: fake
	@cd ${WRKSRC}/Tests && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py --no-gui

.include <bsd.port.mk>
