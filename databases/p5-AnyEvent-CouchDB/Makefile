# $OpenBSD: Makefile,v 1.9 2011/05/15 16:28:47 gsoares Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.24
CATEGORIES=		databases devel

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		converters/p5-JSON \
			databases/p5-CouchDB-View \
			devel/p5-AnyEvent-HTTP \
			devel/p5-Exception-Class \
			devel/p5-IO-All \
			devel/p5-Scope-Guard
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
