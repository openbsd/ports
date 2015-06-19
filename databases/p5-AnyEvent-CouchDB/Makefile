# $OpenBSD: Makefile,v 1.11 2015/06/19 06:50:26 jasper Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.31
CATEGORIES=		databases devel

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# MIT
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		converters/p5-JSON \
			databases/p5-CouchDB-View \
			devel/p5-AnyEvent-HTTP \
			devel/p5-Exception-Class \
			devel/p5-IO-All \
			devel/p5-Scope-Guard
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
