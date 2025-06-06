# XXX version 1.17.0 and up do not support python2 anymore;
# python3 support lives in math/py-numpy
COMMENT=		fast array and numeric programming library for Python 2

PORTROACH=		limit:^1\.16

MODPY_DISTV=		1.16.6
REVISION=		2
DISTNAME=		numpy-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
EXTRACT_SUFX=		.zip

CATEGORIES=		math devel

HOMEPAGE=		https://www.numpy.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}
WANTLIB += blas cblas lapack m pthread

MODULES=		lang/python \
			fortran

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_DISTUTILS_BUILDARGS = --fcompiler=gnu95

NO_TEST =		Yes

MODFORTRAN_COMPILER =	gfortran

BUILD_DEPENDS =		${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=		math/lapack \
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

.include <bsd.port.mk>
