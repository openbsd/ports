# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:19 sthen Exp $

COMMENT =		python wrapper for the Mastodon API

MODPY_EGG_VERSION =	1.4.6
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

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-magic${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
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
