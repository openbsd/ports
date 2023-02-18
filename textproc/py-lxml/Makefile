COMMENT=	Python binding for the libxml2 and libxslt libraries

FLAVORS=	python3
FLAVOR=		python3

MODPY_EGG_VERSION=	4.9.2
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://lxml.de/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} exslt m pthread xml2 xslt z

MODULES=	lang/python

LIB_DEPENDS=	textproc/libxslt
.if ${FLAVOR} == python3
TEST_DEPENDS=	textproc/py-cssselect${MODPY_FLAVOR}
.endif

MODPY_PI=	Yes
MODPY_SETUPTOOLS=Yes
MODPY_PYTEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}lxml/

pre-test:
	cd ${WRKSRC} && cp lib.openbsd-*/lxml/*.so src/lxml

.include <bsd.port.mk>
