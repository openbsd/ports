COMMENT=	jq wrapper for YAML/XML documents

MODPY_DISTV=	4.1.2
DISTNAME=	yq-${MODPY_DISTV}

CATEGORIES=	textproc

HOMEPAGE=	https://kislyuk.github.io/yq/

# Apache 2.0
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs
MODPY_PYTEST_ARGS=test/test.py

RUN_DEPENDS=	textproc/py-yaml \
		textproc/py-xmltodict \
		textproc/py-tomlkit \
		devel/py-argcomplete \
		textproc/jq

TEST_DEPENDS=	devel/flake8 \
		devel/py-coverage \
		devel/py-wheel

.include <bsd.port.mk>
