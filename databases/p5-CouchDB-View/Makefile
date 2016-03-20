# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:09 naddy Exp $

COMMENT=		handle and create CouchDB views in Perl

DISTNAME=		CouchDB-View-0.003
REVISION=		0
CATEGORIES=		databases

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		converters/p5-JSON-XS \
			devel/p5-Data-Dump-Streamer \
			www/p5-URI

.include <bsd.port.mk>
