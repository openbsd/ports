# $OpenBSD: Makefile,v 1.5 2020/07/03 21:13:21 sthen Exp $

COMMENT=		WSDL parsing services package for Python

MODPY_EGG_VERSION=	0.4.8
DISTNAME=		wstools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www
REVISION=		1

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-pbr${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
