COMMENT=	text-to-HTML conversion tool

MODPY_DISTV=	3.8.2
DISTNAME=	markdown-${MODPY_DISTV}
PKGNAME=	py-markdown-${MODPY_DISTV}

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-coverage \
		textproc/py-yaml

# pytest.PytestCollectionWarning: cannot collect test class 'TestSuite' because it has a __init__ constructor
MODPY_PYTEST_ARGS=	--ignore tests/test_syntax/extensions/test_md_in_html.py

.include <bsd.port.mk>
