COMMENT =		docstring style checker

MODPY_EGG_VERSION =	6.3.0
DISTNAME =		pydocstyle-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		textproc/py-snowballstemmer${MODPY_FLAVOR}>=2.2.0

NO_TEST =		Yes

.include <bsd.port.mk>
