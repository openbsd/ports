# $OpenBSD: Makefile,v 1.5 2019/08/27 03:16:26 pamela Exp $

COMMENT =		python wrapper for the Mastodon API

MODPY_EGG_VERSION =	1.4.6
DISTNAME =		Mastodon.py-${MODPY_EGG_VERSION}
PKGNAME =		py-mastodon.py-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://github.com/halcy/Mastodon.py

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

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

# missing test dependencies test-vcr and vcrpy
NO_TEST =		Yes

.include <bsd.port.mk>
