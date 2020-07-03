# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:44 sthen Exp $

COMMENT =		container class boilerplate killer

MODPY_EGG_VERSION =	5.0.0
DISTNAME =		fields-${MODPY_EGG_VERSION}
PKGNAME =		py-fields-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ionelmc/python-fields

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD Licensed
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-characteristic${MODPY_FLAVOR} \
			devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-py${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-tox${MODPY_FLAVOR}
TEST_ENV =		PYTHONPATH="${WRKSRC}/lib"

.include <bsd.port.mk>
