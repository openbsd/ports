COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.26.4
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		math devel

HOMEPAGE=		https://numpy.org/

# BSD
PERMIT_PACKAGE=		Yes

# C++
COMPILER=		base-clang ports-gcc

WANTLIB += ${MODPY_WANTLIB} m pthread

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

# Disable dwz: it fails on DWARF 5 symbols due to 128-bit arithmetic in _pcg64.
# Alternative is CFLAGS += -D PCG_FORCE_EMULATED_128BIT_MATH
DWZ=			:
DEBUG_PACKAGES=		${BUILD_PACKAGES}

MODPY_PI=		Yes
MODPY_PYBUILD=		other

BUILD_DEPENDS=		devel/gas \
			devel/meson-python \
			lang/cython${MODPY_FLAVOR}

TEST_DEPENDS=		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mgcc49}
MODULES+=		fortran
BUILD_DEPENDS+=		${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS+=		${MODFORTRAN_LIB_DEPENDS} \
			math/cblas \
			math/lapack
WANTLIB+=		${MODFORTRAN_WANTLIB} blas cblas lapack
.endif

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

# cpu optimizations (where supported) are runtime detected, but there's
# some problem on i386 where they trigger segfaults in numpy's regression
# tests, and in other programs using numpy (e.g. building makehuman).
# tests look good on amd64 arm64 riscv64 as-is.
# numpy's regressions tests result in segv on powerpc (and also did in
# 1.19.5) but at least some normal runtime seems ok (makehuman builds).
# https://github.com/numpy/numpy/issues/20799
.if ${MACHINE_ARCH} == i386
	sed -i '/^option.*disable-optim/ s/false/true/' ${WRKSRC}/meson_options.txt
.endif

do-test:
	cd ${WRKDIR} && ${MAKE_ENV} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test(verbose=2)'

.include <bsd.port.mk>
