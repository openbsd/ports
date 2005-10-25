# $OpenBSD: Makefile,v 1.3 2005/10/25 18:37:14 xsa Exp $

SHARED_ONLY=	Yes
COMMENT=	"Python tools for computational molecular biology"

DISTNAME=	biopython-1.24
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	biology

HOMEPAGE=	http://www.biopython.org/

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/py-mxDateTime \
		::math/py-Numeric

REGRESS_DEPENDS=${RUN_DEPENDS}

EXAMPLESDIR=	${PREFIX}/share/examples/py-biopython

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/Tests; tar cf - * | tar xf - -C ${EXAMPLESDIR} 

do-regress: fake
	@cd ${WRKSRC}/Tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
