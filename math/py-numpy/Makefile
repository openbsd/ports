# $OpenBSD: Makefile,v 1.42 2014/12/30 21:50:24 landry Exp $

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.8.2
BROKEN-alpha =	numpy/linalg/umath_linalg.c.src:3231: internal compiler error: in extract_insn, at recog.c:2077
REVISION=		0
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		math devel

HOMEPAGE=		http://numpy.scipy.org/

MAINTAINER=		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		blas m lapack ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=		lang/python \
			fortran

FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setupegg.py

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}

MODFORTRAN_COMPILER =	g77

BUILD_DEPENDS = ${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=            math/lapack \
			${MODFORTRAN_LIB_DEPENDS}

# XXX Segmentation fault on powerpc when building py-scipy:
# remove '-funroll-loops'
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST=	patch-* powerpc-patch-numpy_distutils_fcompiler_gnu_py
.endif

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-test: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test()'

.include <bsd.port.mk>
