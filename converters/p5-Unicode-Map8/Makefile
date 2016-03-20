# $OpenBSD: Makefile,v 1.28 2016/03/20 19:56:08 naddy Exp $

COMMENT=	module to implement efficient mapping tables

DISTNAME =	Unicode-Map8-0.13
CATEGORIES=	converters
MODULES=	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
