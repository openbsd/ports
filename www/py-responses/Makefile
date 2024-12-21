COMMENT =		utility library for mocking out the `requests` Python

MODPY_DISTV =	0.25.0

DISTNAME =		responses-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/getsentry/responses

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-yaml \
			www/py-requests \
			www/py-urllib3
TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage \
			devel/py-mock \
			devel/py-mypy \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-test-httpserver \
			textproc/py-tomli \
			textproc/py-tomli_w

.include <bsd.port.mk>
