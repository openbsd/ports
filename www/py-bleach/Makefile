COMMENT =		easy whitelist-based HTML-sanitizing tool

# bleach is deprecated upstream
MODPY_DISTV =		6.2.0
DISTNAME =		bleach-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/mozilla/bleach

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-tinycss2<1.5 \
			textproc/py-webencodings

BUILD_DEPENDS =		devel/py-test-runner

.include <bsd.port.mk>
