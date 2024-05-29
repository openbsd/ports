COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	1.10.1
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		math devel

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}
WANTLIB += blas cblas lapack m pthread ${COMPILER_LIBCXX} util

COMPILER =		base-clang ports-gcc base-gcc

HOMEPAGE=		https://scipy.org/

MODULES=		lang/python fortran

FLAVORS=		python3
FLAVOR =		python3

MODFORTRAN_COMPILER =	gfortran

MODPY_PI =		Yes
MODPY_SETUPTOOLS=       Yes
MODPY_DISTUTILS_BUILDARGS = --fcompiler=gnu95

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODFORTRAN_BUILD_DEPENDS} \
			devel/py-pybind11${MODPY_FLAVOR}>=2.4.3 \
			lang/cython${MODPY_FLAVOR} \
			lang/pythran${MODPY_FLAVOR}

LIB_DEPENDS=		${MODFORTRAN_LIB_DEPENDS} \
			math/cblas \
			math/lapack

RUN_DEPENDS=		math/py-numpy${MODPY_FLAVOR}>=1.19.5 \
			devel/swig


# XXX: requires py-pooch
NO_TEST=		Yes
# TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR} \
#			devel/py-pooch${MODPY_FLAVOR}

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
MAKE_ENV+=		LDFLAGS="-shared -L${LOCALBASE}/lib -pthread -lutil"

post-install:
	${MODPY_COMPILEALL} ${WRKINST}/${MODPY_SITEPKG}/scipy

PORTHOME=	${WRKDIR}

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import scipy ; scipy.test("full")'

.include <bsd.port.mk>
