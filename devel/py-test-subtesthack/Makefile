# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:30 kmos Exp $

COMMENT =		hack to explicitly set up and tear down fixtures

MODPY_EGG_VERSION =	0.1.1
DISTNAME =		pytest-subtesthack-${MODPY_EGG_VERSION}
PKGNAME =		py-test-subtesthack-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

# Public Domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
