COMMENT =		pytest plugin for tornado

MODPY_EGG_VERSION =	0.6.0.post2
DISTNAME =		pytest-tornasync-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/pytest-/py-/:S/.post/pl/}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-tornado${MODPY_FLAVOR}>=5.0

.include <bsd.port.mk>
