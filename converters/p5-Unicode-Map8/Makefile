# $OpenBSD: Makefile,v 1.26 2015/01/23 07:57:11 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME =	Unicode-Map8-0.13
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
