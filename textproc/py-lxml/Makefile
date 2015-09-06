# $OpenBSD: Makefile,v 1.25 2015/09/06 16:43:43 jca Exp $

BROKEN-hppa=	OOM on src/lxml/lxml.etree.c

COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_EGG_VERSION=	3.4.3
REVISION=	0
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}

CATEGORIES=	textproc devel

HOMEPAGE=	http://lxml.de/

MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	${MODPY_WANTLIB} exslt m pthread xml2 xslt z

MODULES=	lang/python

LIB_DEPENDS=	textproc/libxslt
TEST_DEPENDS=	textproc/py-cssselect${MODPY_FLAVOR}

MODPY_PI =	Yes
MODPY_SETUPTOOLS=Yes

FLAVORS=	python3
FLAVOR?=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}lxml/

do-test:
	cd ${WRKSRC} && cp lib.openbsd-*/lxml/*.so src/lxml; \
	    ${MODPY_BIN} test.py

.include <bsd.port.mk>
