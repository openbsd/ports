# $OpenBSD: Makefile,v 1.3 2009/06/29 10:10:03 sthen Exp $

COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p1
CATEGORIES=		math devel

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		amd blas g2c lapack m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scipy/}
HOMEPAGE=		http://numeric.scipy.org/

MODULES=		lang/python
MODPY_SETUPTOOLS=       Yes
MODPY_SETUP=            setupegg.py

BUILD_DEPENDS=		::math/py-numpy \
			::devel/swig
LIB_DEPENDS=		umfpack::math/umfpack \
			arpack::math/arpack
RUN_DEPENDS=		${BUILD_DEPENDS}

REGRESS_DEPENDS=	::devel/py-nose

MAKE_ENV+=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/amd"

do-regress: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import scipy ; scipy.test("full")'


.include <bsd.port.mk>
