COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_DISTV=	5.3.0
DISTNAME=	lxml-${MODPY_DISTV}
PKGNAME=	py-lxml-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://lxml.de/

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	${MODPY_WANTLIB} exslt m pthread xml2 xslt z

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython
LIB_DEPENDS=	textproc/libxslt
TEST_DEPENDS=	textproc/py-cssselect

pre-test:
	cd ${WRKSRC} && cp build/lib.openbsd-*/lxml/*.so src/lxml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-lxml/

.include <bsd.port.mk>
