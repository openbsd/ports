# $OpenBSD: Makefile,v 1.8 2019/07/12 20:43:55 sthen Exp $

COMMENT=		handle and create CouchDB views in Perl

DISTNAME=		CouchDB-View-0.003
REVISION=		0
CATEGORIES=		databases

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		converters/p5-JSON-XS \
			devel/p5-Data-Dump-Streamer \
			www/p5-URI

.include <bsd.port.mk>
