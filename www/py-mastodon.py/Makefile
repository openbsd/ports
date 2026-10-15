COMMENT =		python wrapper for the Mastodon API

MODPY_DISTV =		1.5.1
# new versions are named mastodon_py-${MODPY_DISTV} (e.g. 2.2.2)
DISTNAME =		Mastodon.py-${MODPY_DISTV}
PKGNAME =		py-mastodon.py-${MODPY_DISTV}
REVISION =		6

CATEGORIES =		www

HOMEPAGE =		https://github.com/halcy/Mastodon.py

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

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
			devel/py-test-vcr \
			www/py-requests-mock \
			www/py-vcrpy

.include <bsd.port.mk>
