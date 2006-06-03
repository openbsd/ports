# $OpenBSD: Makefile,v 1.5 2006/06/03 09:23:14 alek Exp $

SHARED_ONLY=	Yes
COMMENT=	"Python tools for computational molecular biology"

DISTNAME=	biopython-1.41
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	biology

HOMEPAGE=	http://www.biopython.org/

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	lang/python

BUILD_DEPENDS=	${MODPY_EXPAT_DEPENDS} \
		::math/py-Numeric 
RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS} \
		:py-mxDateTime-*:devel/py-mxDateTime \
		:py-Numeric-*:math/py-Numeric \
		:py-reportlab-*:print/py-reportlab/reportlab
REGRESS_DEPENDS=${RUN_DEPENDS}

EXAMPLESDIR=	${PREFIX}/share/examples/py-biopython

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/Tests; tar cf - * | tar xf - -C ${EXAMPLESDIR} 

do-regress: fake
	@rm -f ${WRKSRC}/Tests/test_copen.py*
	@cd ${WRKSRC}/Tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py --no-gui

.include <bsd.port.mk>
