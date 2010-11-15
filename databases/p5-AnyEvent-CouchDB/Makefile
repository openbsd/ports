# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:51 espie Exp $

COMMENT=		non-blocking CouchDB client based on jquery.couch.js

DISTNAME=		AnyEvent-CouchDB-1.20
REVISION=		0
CATEGORIES=		databases devel

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg
USE_GROFF =		Yes

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		databases/p5-CouchDB-View \
			devel/p5-AnyEvent-HTTP \
			devel/p5-IO-All

.include <bsd.port.mk>
