# $OpenBSD: Makefile,v 1.39 2019/04/28 21:08:27 naddy Exp $

COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	1.2.1
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		math devel

MAINTAINER=		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}
WANTLIB += blas lapack m pthread ${COMPILER_LIBCXX} util

COMPILER =		base-clang ports-gcc base-gcc

HOMEPAGE=		https://scipy.org/

MODULES=		lang/python fortran

FLAVORS=		python3
FLAVOR?=

MODFORTRAN_COMPILER =	gfortran

MODPY_PI =		Yes
MODPY_SETUPTOOLS=       Yes
MODPY_DISTUTILS_BUILDARGS = --fcompiler=gnu95

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=		${MODFORTRAN_LIB_DEPENDS}
RUN_DEPENDS=		math/py-numpy${MODPY_FLAVOR}>=1.6.0 \
			devel/swig

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
MAKE_ENV+=		LDFLAGS="-shared -L${LOCALBASE}/lib -pthread -lutil"

do-test: fake
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import scipy ; scipy.test("full")'

.include <bsd.port.mk>
