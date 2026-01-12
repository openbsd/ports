COMMENT =	interface to access properties in a Python script or program

MODPY_DISTV =	0.9.0
GH_ACCOUNT =	jackdewinter
GH_PROJECT =	application_properties
GH_TAGNAME =	v${MODPY_DISTV}
DISTNAME =	application_properties-${MODPY_DISTV}
PKGNAME =	py-application_properties-${MODPY_DISTV}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/jackdewinter/application_properties

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-typing-extensions \
		textproc/py-pyjson5 \
		textproc/py-tomli \
		textproc/py-yaml

TEST_DEPENDS =	devel/py-test-cov \
		devel/py-test-timeout

.include <bsd.port.mk>
