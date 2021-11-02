# $OpenBSD: Makefile,v 1.51 2021/11/02 00:01:36 sthen Exp $

COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	1.5.3
REVISION=		2
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

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
			devel/py-pybind11${MODPY_FLAVOR}>=2.4.3
LIB_DEPENDS=		${MODFORTRAN_LIB_DEPENDS} \
			math/cblas \
			math/lapack
RUN_DEPENDS=		math/py-numpy${MODPY_FLAVOR}>=1.14.5 \
			devel/swig

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
MAKE_ENV+=		LDFLAGS="-shared -L${LOCALBASE}/lib -pthread -lutil"

post-install:
	${MODPY_BIN} -m compileall ${WRKINST}/${MODPY_SITEPKG}/scipy

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import scipy ; scipy.test("full")'

.include <bsd.port.mk>
