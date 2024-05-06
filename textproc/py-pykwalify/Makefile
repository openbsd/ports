COMMENT =		lib/cli for JSON/YAML schema validation

MODPY_EGG_VERSION =	1.8.0
DISTNAME =		pykwalify-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-docopt${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
