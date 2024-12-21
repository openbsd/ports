COMMENT =		python wrapper for the Mastodon API

MODPY_DISTV =	1.5.1
DISTNAME =		Mastodon.py-${MODPY_DISTV}
PKGNAME =		py-mastodon.py-${MODPY_DISTV}
REVISION =		5

CATEGORIES =		www

HOMEPAGE =		https://github.com/halcy/Mastodon.py

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-test-runner

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-decorator \
			devel/py-magic \
			devel/py-six \
			devel/py-tz \
			graphics/py-blurhash \
			security/py-cryptography \
			www/py-http_ece \
			www/py-requests

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-test-mock \
			devel/py-test-runner \
			devel/py-test-vcr \
			www/py-requests-mock \
			www/py-vcrpy

.include <bsd.port.mk>
