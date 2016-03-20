# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:22 naddy Exp $

COMMENT=	simple, high-performance PSGI/Plack HTTP server

MODULES=	cpan
PKG_ARCH=	*
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
