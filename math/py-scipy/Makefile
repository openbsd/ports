# $OpenBSD: Makefile,v 1.26 2016/04/25 08:33:23 daniel Exp $

BROKEN-sparc64 =	ICE in scipy/optimize/minpack/qrsolv.f:189
BROKEN-hppa =		ICE in scipy/special/specfun/specfun.f:5151
BROKEN-alpha =		ICE in scipy/optimize/minpack/lmstr.f:462

COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	0.16.1
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		math devel

MAINTAINER=		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODFORTRAN_WANTLIB} ${MODPY_WANTLIB}
WANTLIB += blas lapack m pthread stdc++ util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scipy/}
HOMEPAGE=		http://numeric.scipy.org/

MODULES=		lang/python fortran

FLAVORS=		python3
FLAVOR?=

MODFORTRAN_COMPILER =	g77
MODPY_SETUPTOOLS=       Yes
MODPY_SETUP=            setupegg.py

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=		${MODFORTRAN_LIB_DEPENDS}
RUN_DEPENDS=		math/py-numpy${MODPY_FLAVOR}>=1.6.0 \
			devel/swig

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/amd -I${LOCALBASE}/include"
MAKE_ENV+=		LDFLAGS="-shared -L${LOCALBASE}/lib -pthread -lutil"

# scipy.weave is only packaged under python2
.if ${FLAVOR:Mpython3}
MODPY_COMMENT3 = "@comment "
.else
MODPY_COMMENT3 =
.endif
SUBST_VARS += MODPY_COMMENT3

# fix perms
post-extract:
	find ${WRKSRC} -type d | xargs chmod 755
	find ${WRKSRC} -type f | xargs chmod 644

do-test: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import scipy ; scipy.test("full")'

.include <bsd.port.mk>
