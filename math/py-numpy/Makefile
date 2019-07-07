# $OpenBSD: Makefile,v 1.55 2019/07/07 14:58:04 daniel Exp $

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.14.6
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EXTRACT_SUFX=		.zip
REVISION=		1

CATEGORIES=		math devel

HOMEPAGE=		https://www.numpy.org/

MAINTAINER=		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

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

# Cython 0.28.* uses __attribute__((optimize("Os"))) which
# leads to breakage at runtime on at least macppc.
# -- see: https://marc.info/?l=openbsd-ports&m=153312266209561&w=2
#
# gcc docs also explicitly say that the optimize attribute "is not suitable in production code".
# So let's disable to be safe.
# -- see: https://gcc.gnu.org/onlinedocs/gcc-8.2.0/gcc/Common-Function-Attributes.html
#
# Some related Cython issues:
#   https://github.com/cython/cython/issues/2102
#   https://github.com/cython/cython/issues/2235
#   https://github.com/cython/cython/issues/2494
CFLAGS +=	-D CYTHON_SMALL_CODE=

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test()'

.include <bsd.port.mk>
