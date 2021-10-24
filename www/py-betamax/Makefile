# $OpenBSD: Makefile,v 1.8 2021/10/24 09:28:52 sthen Exp $

COMMENT =		VCR imitation for python-requests

MODPY_EGG_VERSION =	0.8.1
DISTNAME =		betamax-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		3

CATEGORIES =		www devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
