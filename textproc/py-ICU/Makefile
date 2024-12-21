COMMENT=		Python extension wrapping the ICU C++ API

MODPY_DISTV=	2.14
DISTNAME=		PyICU-${MODPY_DISTV}
PKGNAME=		py-ICU-${MODPY_DISTV}
WRKDIST=		${WRKDIR}/pyicu-${MODPY_DISTV}
REVISION=		0

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += icudata icui18n icuuc m pthread ${COMPILER_LIBCXX}

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		textproc/icu4c

TEST_DEPENDS=		devel/py-six \
			devel/py-test

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
