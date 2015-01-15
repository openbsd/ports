# $OpenBSD: Makefile,v 1.43 2015/01/15 02:55:22 daniel Exp $

BROKEN-alpha =	numpy/linalg/umath_linalg.c.src:3231: internal compiler error: in extract_insn, at recog.c:2077

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.8.2
REVISION=		1
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		math devel

HOMEPAGE=		http://numpy.scipy.org/

MAINTAINER=		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		blas lapack m pthread ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=		lang/python \
			fortran

FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setupegg.py

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}

MODFORTRAN_COMPILER =	g77

BUILD_DEPENDS = ${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=            math/lapack \
			${MODFORTRAN_LIB_DEPENDS}

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-test: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test()'

.include <bsd.port.mk>
