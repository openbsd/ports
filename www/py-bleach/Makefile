COMMENT =		easy whitelist-based HTML-sanitizing tool

MODPY_DISTV =	5.0.1
DISTNAME =		bleach-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		www

HOMEPAGE =		https://github.com/mozilla/bleach

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-six \
			sysutils/py-packaging \
			textproc/py-webencodings
BUILD_DEPENDS =		devel/py-test-runner

.include <bsd.port.mk>
