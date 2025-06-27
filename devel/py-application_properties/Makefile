COMMENT =	interface to access properties in a Python script or program

MODPY_DISTV =	0.8.3
DISTNAME =	application_properties-${MODPY_DISTV}
PKGNAME =	py-application_properties-${MODPY_DISTV}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/jackdewinter/application_properties

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-typing-extensions \
		textproc/py-tomli \
		textproc/py-yaml

# some files from test dir are missing in sdist
NO_TEST =	Yes

.include <bsd.port.mk>
