# $OpenBSD: Makefile,v 1.5 2013/03/11 02:52:06 espie Exp $

COMMENT=		handle and create CouchDB views in Perl

DISTNAME=		CouchDB-View-0.003
REVISION=		0
CATEGORIES=		databases

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		converters/p5-JSON-XS \
			devel/p5-Data-Dump-Streamer \
			www/p5-URI

.include <bsd.port.mk>
