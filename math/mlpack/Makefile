BROKEN =	needs adjusting for cython 3

BROKEN-arm =	llvm out of memory
BROKEN-powerpc = virtual memory exhausted, even with -O1
BROKEN-sparc64 = Exhausts virtual memory

COMMENT-main =	 C++ machine learning library
COMMENT-python = python bindings to C++ machine learning library

V = 		3.4.2

# STB stuff
# XXX remember to bump REV if they change
# should be "fixed" in next version
V1 =		2.22
V2 =		1.13

REVISION-python =       5

DISTNAME = 	mlpack-$V
SHARED_LIBS +=  mlpack                    2.0 # 3.0
CATEGORIES = 	math
HOMEPAGE = 	https://mlpack.org/
MAINTAINER =	Marc Espie <espie@openbsd.org>

# parts are 3-clause BSD, others MPL 2, other Boost SL 1.0
PERMIT_PACKAGE = Yes

SITES = 	https://mlpack.org/files/

MULTI_PACKAGES = 	-main -python

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
DPB_PROPERTIES = parallel
.endif

EXTRACT_ONLY =  ${DISTNAME}${EXTRACT_SUFX}
DISTFILES = 	${EXTRACT_ONLY} \
		stb-${V1}/stb_image.h \
		stb-${V2}/stb_image_write.h

FULLPKGNAME-main = 	mlpack-$V
FULLPKGPATH-main = 	${PKGPATH},-main
FULLPKGNAME-python = 	${MODPY_PY_PREFIX}mlpack-$V
FULLPKGPATH-python = 	${PKGPATH},-python
REVISION-main =         1

WANTLIB += 	${COMPILER_LIBCXX} m

WANTLIB-main = 	${WANTLIB} armadillo \
		boost_program_options-mt boost_serialization-mt \
		boost_unit_test_framework-mt c

COMPILER =	base-clang ports-gcc

WANTLIB-python = ${WANTLIB} ${MODPY_WANTLIB} boost_serialization mlpack \
		armadillo boost_serialization-mt

MODULES = 	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS += 	textproc/txt2man \
			lang/cython \
			math/ensmallen \
			devel/py-setuptools \
			math/py-pandas \
			devel/py-distutils-extra \
			devel/py-test-runner

LIB_DEPENDS-main =	math/armadillo \
			devel/boost

LIB_DEPENDS-python = 	math/mlpack,-main \
			devel/boost

RUN_DEPENDS-python = 	${MODPY_RUN_DEPENDS} \
			math/py-pandas

# XXX set this *explicitly*, do not depend on module order
CONFIGURE_STYLE = 	cmake

# XXX this sets DESTDIR for setup.py at configure time.
CONFIGURE_ENV += 	DESTDIR=${DESTDIR}
CONFIGURE_ARGS += 	-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DUSING_GIT=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=TRUE \
			-DDOWNLOAD_ENSMALLEN=OFF \
			-DBUILD_PYTHON_BINDINGS=ON \
			-DCMAKE_INSTALL_MANDIR=${PREFIX}/man/man1

# XXX note that some of the tests WILL fail. You've got to love probabilistic
# software...
TEST_ENV = 	CTEST_OUTPUT_ON_FAILURE=1

TEST_DEPENDS =	devel/py-more-itertools

SITEDIR = 	lib/python${MODPY_VERSION}/site-packages
EGGDIR = 	${SITEDIR}/mlpack-$V-py${MODPY_VERSION}.egg-info

SUBST_VARS += 	EGGDIR SITEDIR

post-extract:
	mkdir -p ${WRKBUILD}/deps/stb
	cp ${FULLDISTDIR}/stb-${V1}/stb_image.h ${WRKBUILD}/deps/stb
	cp ${FULLDISTDIR}/stb-${V2}/stb_image_write.h ${WRKBUILD}/deps/stb
.include <bsd.port.mk>
