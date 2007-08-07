# $OpenBSD: Makefile,v 1.3 2007/08/07 05:25:58 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"fast array and numeric programming library for Python"

DISTNAME=	numpy-1.0.1
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

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.testing.ScipyTest(numpy).test(10)'


.include <bsd.port.mk>
