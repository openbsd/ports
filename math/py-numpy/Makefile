# $OpenBSD: Makefile,v 1.16 2009/09/28 15:15:37 jasper Exp $

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.3.0
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		math devel

HOMEPAGE=		http://numpy.scipy.org/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		blas m g2c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setupegg.py

REGRESS_DEPENDS=	::devel/py-nose

LIB_DEPENDS=            lapack::math/lapack


pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.testing.NumpyTest(numpy).test(10)'

.include <bsd.port.mk>
