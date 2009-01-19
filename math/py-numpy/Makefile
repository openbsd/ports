# $OpenBSD: Makefile,v 1.10 2009/01/19 07:11:42 djm Exp $

SHARED_ONLY=		Yes

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.2.1
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
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

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.testing.NumpyTest(numpy).test(10)'

.include <bsd.port.mk>
