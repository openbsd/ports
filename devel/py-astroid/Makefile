# $OpenBSD: Makefile,v 1.15 2021/03/04 02:56:30 kmos Exp $

COMMENT =		common base representation of Python source code

MODPY_EGG_VERSION =	2.5.1
DISTNAME =		astroid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/unittest*.py

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-lazy-object-proxy${MODPY_FLAVOR}>=1.4 \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-wrapt${MODPY_FLAVOR}>=1.11

.include <bsd.port.mk>
