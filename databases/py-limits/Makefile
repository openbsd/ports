COMMENT =		rate limiting utilities

MODPY_DISTV =		5.6.0
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

# XXX: py-test-lazy-fixture is marked BROKEN
NO_TEST =		Yes
# TEST_DEPENDS =	devel/py-test-lazy-fixture

.include <bsd.port.mk>
