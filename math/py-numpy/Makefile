# $OpenBSD: Makefile,v 1.32 2011/06/08 17:36:01 jasper Exp $

COMMENT=		fast array and numeric programming library for Python

MODPY_EGG_VERSION=	1.6.0
DISTNAME=		numpy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		0
CATEGORIES=		math devel

HOMEPAGE=		http://numpy.scipy.org/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		blas m lapack ${MODFORTRAN_WANTLIB}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=numpy/}

MODULES=		lang/python \
			fortran

MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setupegg.py

REGRESS_DEPENDS=	devel/py-nose

MODFORTRAN_COMPILER =	g77

BUILD_DEPENDS = ${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=            math/lapack \
			${MODFORTRAN_LIB_DEPENDS}

# XXX Segmentation fault on powerpc when building py-scipy:
# remove '-funroll-loops'
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST=	patch-* powerpc-patch-numpy_distutils_fcompiler_gnu_py
.endif

MODPY_BADEGGS = numpy

pre-build:
	cp -f ${WRKSRC}/numpy/distutils/site.cfg ${WRKSRC}/site.cfg

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
	    'import numpy ; numpy.test()'

.include <bsd.port.mk>
