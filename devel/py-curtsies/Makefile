COMMENT =		curses-like terminal wrapper

MODPY_DISTV =	0.3.4
DISTNAME =		curtsies-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		3

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-blessings \
			devel/py-wcwidth

TEST_DEPENDS =		devel/py-mock \
			devel/py-nose \
			devel/py-pyte

.include <bsd.port.mk>
