# $OpenBSD: Makefile,v 1.4 2009/11/19 13:04:23 jasper Exp $

COMMENT=	Python binding for the libxml2 and libxslt libraries

MODPY_EGG_VERSION=	2.0.4
DISTNAME=	lxml-${MODPY_EGG_VERSION}
PKGNAME=	py-lxml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc devel

MAINTAINER=	Benoit Chesneau <benoitc@metavers.net>

EXTRACT_SUFX=	.tgz
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://codespeak.net/lxml/

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	m xml2 z

MODULES=	lang/python

LIB_DEPENDS=	exslt,xslt::textproc/libxslt

MODPY_SETUPTOOLS=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-lxml
	@cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-lxml/

NO_REGRESS=	Yes

.include <bsd.port.mk>
