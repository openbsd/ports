# $OpenBSD: Makefile,v 1.8 2011/01/16 09:27:28 phessler Exp $

COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_EGG_VERSION=	2.2.8
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc devel

EXTRACT_SUFX=	.tgz
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://codespeak.net/lxml/

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	m xml2 z exslt xslt

MODULES=	lang/python

LIB_DEPENDS=	textproc/libxslt
RUN_DEPENDS=	www/py-beautifulsoup

MODPY_SETUPTOOLS=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-lxml/

.include <bsd.port.mk>
