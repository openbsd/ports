COMMENT =		classes for orchestrating Python (virtual) environments

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		jaraco.envs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/jaraco.envs

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-path${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
