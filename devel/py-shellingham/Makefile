COMMENT =		detect shell the Python executable is running in

MODPY_EGG_VERSION =	1.5.4
DISTNAME =		shellingham-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/sarugaku/shellingham

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
