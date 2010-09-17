# $OpenBSD: Makefile,v 1.2 2010/09/17 14:40:25 jasper Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.20
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

.include <bsd.port.mk>
