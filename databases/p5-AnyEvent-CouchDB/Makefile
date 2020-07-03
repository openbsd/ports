# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:33 sthen Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.31
CATEGORIES=		databases devel
REVISION=		0

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		converters/p5-JSON \
			databases/p5-CouchDB-View \
			devel/p5-AnyEvent-HTTP \
			devel/p5-Exception-Class \
			devel/p5-IO-All \
			devel/p5-Scope-Guard
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
