# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:08 naddy Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.31
CATEGORIES=		databases devel

MODULES=		cpan
PKG_ARCH=		*
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
