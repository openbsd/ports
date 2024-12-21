COMMENT =		jq wrapper for YAML/XML documents

MODPY_DISTV =	3.4.3
DISTNAME =		yq-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://kislyuk.github.io/yq/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	test/test.py

RUN_DEPENDS =		devel/py-argcomplete \
			textproc/jq \
			textproc/py-tomlkit \
			textproc/py-xmltodict \
			textproc/py-yaml>=5.3.1

TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage \
			devel/py-wheel

.include <bsd.port.mk>
