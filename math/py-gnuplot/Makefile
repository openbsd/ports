# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:46 sthen Exp $

COMMENT=	Python interface to the gnuplot plotting program

MODPY_EGG_VERSION=	1.8
DISTNAME=		gnuplot-py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:S/py-//}
REVISION =		3
CATEGORIES=		math graphics

HOMEPAGE=		http://gnuplot-py.sourceforge.net/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnuplot-py/}

MODULES=	lang/python

BUILD_DEPENDS+=	math/py-Numeric \
		math/py-numpy
RUN_DEPENDS+=	math/py-Numeric \
		math/gnuplot \
		math/py-numpy

NO_TEST=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-gnuplot
EXAMPLESDIR=	${PREFIX}/share/examples/py-gnuplot

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/doc; tar cf - . | tar xf - -C ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test.py ${EXAMPLESDIR}

.include <bsd.port.mk>
