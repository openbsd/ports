COMMENT =		utility library for mocking out the `requests` Python

MODPY_EGG_VERSION =	0.25.0

DISTNAME =		responses-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/getsentry/responses

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-httpserver${MODPY_FLAVOR} \
			textproc/py-tomli${MODPY_FLAVOR} \
			textproc/py-tomli_w${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
