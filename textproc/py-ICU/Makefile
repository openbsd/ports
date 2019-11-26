# $OpenBSD: Makefile,v 1.21 2019/11/26 00:54:05 kmos Exp $

COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	2.3.1
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += icudata icui18n icuuc m pthread ${COMPILER_LIBCXX}
WANTLIB += ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		textproc/icu4c

TEST_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

TESTLIBDIR=	${WRKSRC}/lib.openbsd-`uname -r`-${ARCH}-${MODPY_VERSION}/
TEST_ENV=	PYTHONPATH=${TESTLIBDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
