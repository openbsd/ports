# $OpenBSD: Makefile,v 1.27 2015/07/16 23:57:19 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME =	Unicode-Map8-0.13
CATEGORIES=	converters
MODULES=	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
