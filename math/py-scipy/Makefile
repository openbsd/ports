# $OpenBSD: Makefile,v 1.5 2010/05/23 15:51:45 espie Exp $

COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p2
CATEGORIES=		math devel

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		amd blas lapack m ${MODFORTRAN_WANTLIB}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scipy/}
HOMEPAGE=		http://numeric.scipy.org/

MODULES=		lang/python fortran
MODFORTRAN_WANTG77=	Yes
MODPY_SETUPTOOLS=       Yes
MODPY_SETUP=            setupegg.py
MODPY_BADEGGS=		scipy

BUILD_DEPENDS=		::math/py-numpy \
			::devel/swig \
			${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=		umfpack::math/umfpack \
			arpack::math/arpack \
			${MODFORTRAN_LIB_DEPENDS}
RUN_DEPENDS=		${BUILD_DEPENDS}

REGRESS_DEPENDS=	::devel/py-nose

MAKE_ENV+=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/amd -I${LOCALBASE}/include"

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import scipy ; scipy.test("full")'


.include <bsd.port.mk>
