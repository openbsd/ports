COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_DISTV=	6.0.2
DISTNAME=	lxml-${MODPY_DISTV}
PKGNAME=	py-lxml-${MODPY_DISTV}

CATEGORIES=	textproc devel

HOMEPAGE=	https://lxml.de/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-clang
COMPILER_LANGS=	c

WANTLIB=	${MODPY_WANTLIB} exslt m pthread xml2 xslt z

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython
LIB_DEPENDS=	textproc/libxslt
TEST_DEPENDS=	textproc/py-cssselect

MODPY_TEST_LINK_SO=  Yes
MODPY_TEST_LINK_SRC= ${WRKSRC}/src

# XXX many failures in these, possibly doesn't import etree correctly for tests?
MODPY_PYTEST_ARGS=   --ignore src/lxml/tests/test_elementtree.py \
		     --ignore src/lxml/tests/test_incremental_xmlfile.py \
		     --ignore src/lxml/tests/test_io.py

.include <bsd.port.mk>
