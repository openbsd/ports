# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 21:55:19 kmos Exp $

COMMENT =		utility library for mocking out the `requests` Python

MODPY_EGG_VERSION =	0.10.6

DISTNAME =		responses-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/getsentry/responses

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-cookies${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-localserver${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
