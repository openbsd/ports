# $OpenBSD: Makefile,v 1.8 2021/10/24 09:28:53 sthen Exp $

COMMENT =		utility belt for advanced users of python-requests

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		requests-toolbelt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/toolbelt

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# requires network access
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			www/py-betamax${MODPY_FLAVOR}

.include <bsd.port.mk>
