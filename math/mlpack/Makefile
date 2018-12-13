# $OpenBSD: Makefile,v 1.4 2018/12/13 19:53:24 sthen Exp $

COMMENT-main =	 C++ machine learning library
COMMENT-python = python bindings to C++ machine learning library

V = 		3.0.4
DISTNAME = 	mlpack-$V
SHARED_LIBS +=  mlpack                    0.0 # 3.0
CATEGORIES = 	math
HOMEPAGE = 	https://mlpack.org/
MAINTAINER =	Marc Espie <espie@openbsd.org>

# parts are 3-clause BSD, others MPL 2, other Boost SL 1.0
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES = https://mlpack.org/files/

MULTI_PACKAGES = 	-main -python

FULLPKGNAME-main = 	mlpack-$V
FULLPKGPATH-main = 	${PKGPATH},-main
FULLPKGNAME-python = 	${MODPY_PY_PREFIX}mlpack-$V
FULLPKGPATH-python = 	${PKGPATH},-python${FLAVOR_EXT:S/-/,/g}
REVISION-main =         0
REVISION-python =       0

WANTLIB += 	${COMPILER_LIBCXX} m

WANTLIB-main = 	${WANTLIB} armadillo \
		boost_program_options-mt boost_serialization-mt \
		boost_unit_test_framework-mt c

COMPILER =	base-clang ports-clang ports-gcc

WANTLIB-python = ${WANTLIB} mlpack ${MODPY_WANTLIB} boost_serialization

MODULES = 	devel/cmake \
		lang/python

FLAVOR ?= 		python3
FLAVORS = 		python3

MODPY_RUNDEP =	No

BUILD_DEPENDS += 	textproc/txt2man \
			lang/cython${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			devel/py-distutils-extra${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR}

LIB_DEPENDS-main =	math/armadillo \
			devel/boost

LIB_DEPENDS-python = 	math/mlpack,-main

RUN_DEPENDS-python = 	math/py-pandas${MODPY_FLAVOR}



# XXX set this *explicitly*, do not depend on module order
CONFIGURE_STYLE = 	cmake

# XXX this sets DESTDIR for setup.py at configure time.
CONFIGURE_ENV += 	DESTDIR=${DESTDIR}
CONFIGURE_ARGS += 	-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DUSING_GIT=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=TRUE

# for now, there is process explosion with the current version of cmake
USE_NINJA =	No

TEST_ENV = 	CTEST_OUTPUT_ON_FAILURE=1

SITEDIR = 	lib/python${MODPY_VERSION}/site-packages
EGGDIR = 	${SITEDIR}/mlpack-$V-py${MODPY_VERSION}.egg-info

SUBST_VARS += 	EGGDIR SITEDIR

.include <bsd.port.mk>
