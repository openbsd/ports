# $OpenBSD: Makefile,v 1.17 2014/06/04 14:29:49 jasper Exp $

COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_EGG_VERSION=	2.3.2
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
REVISION=	0
CATEGORIES=	textproc devel

EXTRACT_SUFX=	.tgz
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://codespeak.net/lxml/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m xml2 z exslt xslt ${MODPY_WANTLIB}

MODULES=	lang/python

LIB_DEPENDS=	textproc/libxslt

MODPY_SETUPTOOLS=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-lxml/

do-test:
	cd ${WRKSRC} && cp lib.openbsd-*/lxml/*.so src/lxml; \
	    ${MODPY_BIN} test.py

.include <bsd.port.mk>
