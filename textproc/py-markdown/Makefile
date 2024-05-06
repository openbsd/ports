COMMENT=	text-to-HTML conversion tool

MODPY_EGG_VERSION=	3.4.4
DISTNAME=	Markdown-${MODPY_EGG_VERSION}
PKGNAME=	py-markdown-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-coverage${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

# pytest.PytestCollectionWarning: cannot collect test class 'TestSuite' because it has a __init__ constructor (from: tests/test_syntax/extensions/test_md_in_html.py)
MODPY_PYTEST_ARGS=	--ignore tests/test_syntax/extensions/test_md_in_html.py

.include <bsd.port.mk>
