COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	4.17.3
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://github.com/Julian/jsonschema

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jsonschema

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-pyrsistent${MODPY_FLAVOR}
# idna can optionally be used at runtime in some circunstances;
# have seen races with DPB junking so let's force the dep
RUN_DEPENDS +=		net/py-idna${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR}

.include <bsd.port.mk>
