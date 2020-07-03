# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:29 sthen Exp $

ONLY_FOR_ARCHS = ${LP64_ARCHS}

COMMENT =	manipulate 128 bits integers in Perl

DISTNAME =	Math-Int128-0.22
REVISION =	1

CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

RUN_DEPENDS =	math/p5-Math-Int64

.include <bsd.port.mk>
