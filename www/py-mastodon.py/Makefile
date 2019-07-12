# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:02 sthen Exp $

COMMENT =		python wrapper for the Mastodon API

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		Mastodon.py-${MODPY_EGG_VERSION}
PKGNAME =		py-mastodon.py-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/halcy/Mastodon.py

MAINTAINER =		Pamela Mosiejczuk <pamela@cranky.work>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			www/py-http_ece${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# missing test dependencies test-vcr and vcrpy
NO_TEST =		Yes

.include <bsd.port.mk>
