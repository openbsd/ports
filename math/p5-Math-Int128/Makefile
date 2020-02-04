# $OpenBSD: Makefile,v 1.3 2020/02/04 21:17:29 fcambus Exp $

ONLY_FOR_ARCHS = ${LP64_ARCHS}

COMMENT =	manipulate 128 bits integers in Perl

DISTNAME =	Math-Int128-0.22
REVISION =	0

CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

RUN_DEPENDS =	math/p5-Math-Int64

.include <bsd.port.mk>
