# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:03 sthen Exp $

COMMENT =		utility belt for advanced users of python-requests

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		requests-toolbelt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/sigmavirus24/requests-toolbelt

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			www/py-betamax${MODPY_FLAVOR}

.include <bsd.port.mk>
