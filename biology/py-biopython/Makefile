# $OpenBSD: Makefile,v 1.1.1.1 2004/05/07 08:57:15 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python tools for computational molecular biology"

DISTNAME=	biopython-1.24
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	biology

HOMEPAGE=	http://www.biopython.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	python

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
