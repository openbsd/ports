# $OpenBSD: Makefile,v 1.21 2015/04/02 14:21:17 jasper Exp $

COMMENT=	Python binding for the libxml2 and libxslt libraries
BROKEN-hppa=	OOM on src/lxml/lxml.etree.c

MODPY_EGG_VERSION=	3.3.5
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc devel

HOMEPAGE=	http://lxml.de/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes
EXTRACT_SUFX=	.tar.gz

WANTLIB=	m xml2 z exslt xslt ${MODPY_WANTLIB}

MODULES=	lang/python

LIB_DEPENDS=	textproc/libxslt
TEST_DEPENDS=	textproc/py-cssselect

MODPY_SETUPTOOLS=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-lxml/

do-test:
	cd ${WRKSRC} && cp lib.openbsd-*/lxml/*.so src/lxml; \
	    ${MODPY_BIN} test.py

.include <bsd.port.mk>
