COMMENT =		jq wrapper for YAML/XML documents

MODPY_EGG_VERSION =	3.4.1
DISTNAME =		yq-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://kislyuk.github.io/yq/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	test/test.py

RUN_DEPENDS =		devel/py-argcomplete${MODPY_FLAVOR} \
			textproc/jq \
			textproc/py-tomlkit${MODPY_FLAVOR} \
			textproc/py-xmltodict${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}>=5.3.1

TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

.include <bsd.port.mk>
