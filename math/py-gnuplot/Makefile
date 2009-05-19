# $OpenBSD: Makefile,v 1.7 2009/05/19 13:56:11 benoit Exp $

COMMENT=	Python interface to the gnuplot plotting program

MODPY_EGG_VERSION=	1.8
DISTNAME=		gnuplot-py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:S/py-//}
CATEGORIES=		math graphics

HOMEPAGE=		http://gnuplot-py.sourceforge.net/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnuplot-py/}

MODULES=	lang/python

BUILD_DEPENDS+=	:py-Numeric-*:math/py-Numeric \
		::math/py-numpy
RUN_DEPENDS+=	:py-Numeric-*:math/py-Numeric \
		:gnuplot-*:math/gnuplot

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-gnuplot
EXAMPLESDIR=	${PREFIX}/share/examples/py-gnuplot

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/doc; tar cf - . | tar xf - -C ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test.py ${EXAMPLESDIR}

.include <bsd.port.mk>
