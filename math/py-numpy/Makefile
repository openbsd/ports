COMMENT=	fast array and numeric programming library for Python

MODPY_DISTV=	2.4.1
DISTNAME=	numpy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

REVISION=	1

CATEGORIES=	math devel

HOMEPAGE=	https://numpy.org/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} ${MODFORTRAN_WANTLIB} blas
WANTLIB += cblas lapack m

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	lang/python \
		fortran
MODPY_PYBUILD=	mesonpy
MODPY_PI=	Yes

# cython picks up pythran at runtime, so normally a dependency is
# enforced via python.port.mk to avoid problems with DPB junking.
# disable, to avoid a loop: cython -> pythran -> py-numpy -> cython
MODPY_CYTHON_PYTHRAN_RDEP= No

BUILD_DEPENDS=	devel/gas \
		lang/cython

# detected at runtime in crackfortran.py; checked at the start of run
# but not used until later. force the dep to ensure consistent results
# and avoid dpb junking issues.
RUN_DEPENDS=	textproc/py-charset-normalizer

TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-hypothesis \
		devel/py-test \
		devel/py-test-cov \
		devel/py-typing-extensions \
		devel/py-tz \
		devel/py-wheel

BUILD_DEPENDS+=	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS+=	${MODFORTRAN_LIB_DEPENDS} \
		math/lapack

# Cython up to 0.28.4 used the discouraged __attribute__((optimize("Os")))
# which caused runtime breakage on at least macppc.
# -- see: https://marc.info/?l=openbsd-ports&m=153312266209561&w=2
#
# Some related Cython issues:
#   https://github.com/cython/cython/issues/2102
#   https://github.com/cython/cython/issues/2235
#   https://github.com/cython/cython/issues/2494
#
# Cython 0.28.5 and newer switched to __attribute__((cold)).
# Leave this disabled on macppc unless someone retests on that
# platform.
#
.if ${MACHINE_ARCH} == powerpc
CFLAGS +=	-D CYTHON_SMALL_CODE=
.endif

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg
	ln -sf ${LOCALBASE}/bin/gas ${WRKDIR}/bin/as

# numpy has both compiled-in cpu optimizations ("baseline") used on all
# code, and also runtime-selected optimizations ("dispatch") which use
# runtime detection (however these are not used in all codepaths).
# the lowest level of optimization supported by numpy is what it calls
# X86_V2 (which requires at least SSE4.2 support; 2008+ for intel, 2011+
# for amd), so disable that completely for baseline to allow running
# on more machines.

.if ${MACHINE_ARCH} == amd64
MODPY_PYBUILD_ARGS += -Csetup-args=-Dcpu-baseline="none"
.endif

.if ${MACHINE_ARCH} == i386
# https://github.com/numpy/numpy/issues/20799
# any optimisations are causing segfaults in regression tests on i386
MODPY_PYBUILD_ARGS += -Csetup-args=-Dcpu-baseline="none"
MODPY_PYBUILD_ARGS += -Csetup-args=-Dcpu-dispatch="none"
.endif

do-test:
	cd ${WRKDIR} && ${MAKE_ENV} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test(verbose=2)'

.include <bsd.port.mk>
