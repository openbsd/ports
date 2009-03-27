# $OpenBSD: Makefile,v 1.2 2009/03/27 10:42:41 jasper Exp $

COMMENT=		Python HTTP client library

DISTNAME=		httplib2-0.4.0
PKGNAME=		py-${DISTNAME}p0

CATEGORIES=		www net

HOMEPAGE=		http://code.google.com/p/httplib2/

MAINTAINER=		Benoit Chesneau <benoitc@metavers.net>

# MIT
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		http://httplib2.googlecode.com/files/

MODULES=		lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-httplib2
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-httplib2

do-regress:
	${MODPY_BIN} ${WRKSRC}/httplib2/iri2uri.py

.include <bsd.port.mk>
