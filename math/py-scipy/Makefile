COMMENT=	maths, science and engineering modules for Python

MODPY_DISTV=	1.13.1
DISTNAME=	scipy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	math devel

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}
WANTLIB += blas cblas lapack m pthread ${COMPILER_LIBCXX} util

COMPILER=	base-clang ports-gcc base-gcc

HOMEPAGE=	https://scipy.org/

MODULES=	lang/python fortran

MODFORTRAN_COMPILER=	gfortran

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	${RUN_DEPENDS} \
		${MODFORTRAN_BUILD_DEPENDS} \
		devel/meson-python \
		devel/py-pybind11 \
		lang/cython \
		lang/pythran

LIB_DEPENDS=	math/lapack \
		${MODFORTRAN_LIB_DEPENDS}

RUN_DEPENDS=	math/py-numpy \
		devel/swig

# requires py-pooch
NO_TEST=	Yes
# TEST_DEPENDS=	devel/py-hypothesis \
#		devel/py-pooch

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import scipy ; scipy.test("full")'

.include <bsd.port.mk>
