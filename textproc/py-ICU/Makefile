COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	2.12
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += icudata icui18n icuuc m pthread ${COMPILER_LIBCXX}

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR=			python3

COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		textproc/icu4c

TEST_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
