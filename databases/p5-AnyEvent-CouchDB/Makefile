# $OpenBSD: Makefile,v 1.3 2010/09/17 17:26:51 jasper Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.20
REVISION=		0
CATEGORIES=		databases devel

MODULES=		cpan

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::databases/p5-CouchDB-View \
			::devel/p5-AnyEvent-HTTP \
			::devel/p5-IO-All

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-AnyEvent-CouchDB/
	${INSTALL_DATA} ${WRKSRC}/eg/* \
		${PREFIX}/share/examples/p5-AnyEvent-CouchDB/

.include <bsd.port.mk>
