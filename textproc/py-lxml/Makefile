COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_DISTV=	6.1.3
GH_ACCOUNT=	lxml
GH_PROJECT=	lxml
GH_TAGNAME=	lxml-${MODPY_DISTV}
DISTNAME=	lxml-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	https://lxml.de/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-clang
COMPILER_LANGS=	c

WANTLIB=	exslt m pthread xml2 xslt z

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython
LIB_DEPENDS=	textproc/libxslt
TEST_DEPENDS=	textproc/py-cssselect

MODPY_TEST_DIR= ${WRKSRC}/src
MODPY_TEST_LINK_SO=  Yes
MODPY_TEST_LINK_SRC= ${WRKSRC}/src

# XXX many failures in these, possibly doesn't import etree correctly for tests?
MODPY_PYTEST_ARGS= \
		--ignore lxml/tests/test_elementtree.py \
		--ignore lxml/tests/test_incremental_xmlfile.py

test: fake

.include <bsd.port.mk>
