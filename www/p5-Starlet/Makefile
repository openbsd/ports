# $OpenBSD: Makefile,v 1.1.1.1 2011/06/14 12:16:58 robert Exp $

COMMENT=	a simple, high-performance PSGI/Plack HTTP server

MODULES=	cpan
DISTNAME=	Starlet-0.13
CATEGORIES=	www

CPAN_AUTHOR=	KAZUHO

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	devel/p5-Parallel-Prefork \
		net/p5-Server-Starter \
		www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
