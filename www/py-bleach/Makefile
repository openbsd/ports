COMMENT =		easy whitelist-based HTML-sanitizing tool

MODPY_EGG_VERSION =	5.0.1
DISTNAME =		bleach-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://github.com/mozilla/bleach

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-webencodings${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

.include <bsd.port.mk>
