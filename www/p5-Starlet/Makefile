# $OpenBSD: Makefile,v 1.2 2011/10/05 17:30:58 jasper Exp $

COMMENT=	simple, high-performance PSGI/Plack HTTP server

MODULES=	cpan
DISTNAME=	Starlet-0.13
REVISION=	0
CATEGORIES=	www

CPAN_AUTHOR=	KAZUHO

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Parallel-Prefork \
		net/p5-Server-Starter \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
