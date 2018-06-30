# $OpenBSD: Makefile,v 1.50 2018/06/30 21:49:33 daniel Exp $

BROKEN-alpha =	numpy/linalg/umath_linalg.c.src:3231: internal compiler error: in extract_insn, at recog.c:2077

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.14.5
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EXTRACT_SUFX=		.zip

CATEGORIES=		math devel

HOMEPAGE=		http://numpy.scipy.org/

MAINTAINER=		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		blas lapack m pthread ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}

MODULES=		lang/python \
			fortran

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_DISTUTILS_BUILDARGS = --fcompiler=gnu95

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR}

MODFORTRAN_COMPILER =	gfortran

BUILD_DEPENDS = ${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=            math/lapack \
			${MODFORTRAN_LIB_DEPENDS}

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test()'

.include <bsd.port.mk>
