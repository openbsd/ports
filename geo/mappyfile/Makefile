COMMENT =	mapfile parser

MODPY_EGG_VERSION =	1.0.2
DISTNAME =	mappyfile-${MODPY_EGG_VERSION}

CATEGORIES =	geo

HOMEPAGE =	https://mappyfile.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=	python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# tests need glob2 module and sample mapfiles arent shipped on pypi
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-jsonschema${MODPY_FLAVOR} \
		textproc/py-lark${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-jsonref${MODPY_FLAVOR}

.include <bsd.port.mk>
