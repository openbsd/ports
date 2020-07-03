# $OpenBSD: Makefile,v 1.30 2020/07/03 21:44:33 sthen Exp $

COMMENT=	module to implement efficient mapping tables

DISTNAME =	Unicode-Map8-0.13
CATEGORIES=	converters
MODULES=	cpan
REVISION =	1

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
