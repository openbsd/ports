COMMENT =	mapfile parser

MODPY_DISTV =	1.0.2
DISTNAME =	mappyfile-${MODPY_DISTV}
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://mappyfile.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# tests need glob2 module and sample mapfiles arent shipped on pypi
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-jsonschema \
		textproc/py-lark \
		devel/py-click \
		devel/py-jsonref

.include <bsd.port.mk>
