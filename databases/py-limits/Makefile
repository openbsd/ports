COMMENT =		rate limiting utilities

MODPY_DISTV =		5.8.0
DISTNAME =		limits-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://limits.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		devel/py-deprecated \
			devel/py-typing-extensions \
			sysutils/py-packaging

# needs pymemcache and py-test-lazy-fixtures (not in ports; the latter
# is not py-test-lazy-fixture)
NO_TEST =		Yes

.include <bsd.port.mk>
