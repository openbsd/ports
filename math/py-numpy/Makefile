# $OpenBSD: Makefile,v 1.13 2009/01/27 21:46:53 martynas Exp $

SHARED_ONLY=		Yes

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.2.1
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p1
CATEGORIES=		math devel

HOMEPAGE=		http://numeric.scipy.org/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setupegg.py

REGRESS_DEPENDS=	::devel/py-nose

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.testing.NumpyTest(numpy).test(10)'

.include <bsd.port.mk>
