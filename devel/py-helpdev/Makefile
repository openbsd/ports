COMMENT =		extract Python environment information

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		helpdev-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-importlib-metadata${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}>=5.6

.include <bsd.port.mk>
