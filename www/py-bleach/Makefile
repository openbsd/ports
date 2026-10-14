COMMENT =		easy whitelist-based HTML-sanitizing tool

# bleach is no longer maintained upstream: no more security fixes
MODPY_DISTV =		6.4.0
DISTNAME =		bleach-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/mozilla/bleach

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-tinycss2 \
			textproc/py-webencodings

.include <bsd.port.mk>
