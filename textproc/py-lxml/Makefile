COMMENT=	Python binding for the libxml2 and libxslt libraries

# 5.x needs Cython 3.0.7+
MODPY_EGG_VERSION=	4.9.4
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://lxml.de/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} exslt m pthread xml2 xslt z

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

LIB_DEPENDS=	textproc/libxslt
TEST_DEPENDS=	textproc/py-cssselect${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}lxml/

pre-test:
	cd ${WRKSRC} && cp build/lib.openbsd-*/lxml/*.so src/lxml

.include <bsd.port.mk>
