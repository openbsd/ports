# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:54 sthen Exp $

COMMENT =		python wrapper for the Mastodon API

MODPY_EGG_VERSION =	1.5.1
DISTNAME =		Mastodon.py-${MODPY_EGG_VERSION}
PKGNAME =		py-mastodon.py-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/halcy/Mastodon.py

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-magic${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			graphics/py-blurhash${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			www/py-http_ece${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			devel/py-test-vcr${MODPY_FLAVOR} \
			www/py-requests-mock${MODPY_FLAVOR} \
			www/py-vcrpy${MODPY_FLAVOR}

.include <bsd.port.mk>
