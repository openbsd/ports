# $OpenBSD: Makefile,v 1.6 2007/10/08 08:22:41 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	fast array and numeric programming library for Python

DISTNAME=	numpy-1.0.3
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	math devel

MAINTAINER=	Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}
HOMEPAGE=	http://numeric.scipy.org/

MODULES=	lang/python

# The official release unfortunately includes a bunch of .orig files
post-extract:
	find ${WRKSRC} -type f -name \*.orig -print0 | xargs -r0 rm -f

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.testing.NumpyTest(numpy).test(10)'


.include <bsd.port.mk>
