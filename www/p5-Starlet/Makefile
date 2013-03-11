# $OpenBSD: Makefile,v 1.3 2013/03/11 11:44:46 espie Exp $

COMMENT=	simple, high-performance PSGI/Plack HTTP server

MODULES=	cpan
DISTNAME=	Starlet-0.13
REVISION=	0
CATEGORIES=	www

CPAN_AUTHOR=	KAZUHO

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Parallel-Prefork \
		net/p5-Server-Starter \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
