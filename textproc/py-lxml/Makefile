# $OpenBSD: Makefile,v 1.18 2014/06/04 14:50:33 jasper Exp $

COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_EGG_VERSION=	2.3.2
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
REVISION=	1
CATEGORIES=	textproc devel

HOMEPAGE=	http://lxml.de/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=l/lxml/}
EXTRACT_SUFX=	.tar.gz

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
