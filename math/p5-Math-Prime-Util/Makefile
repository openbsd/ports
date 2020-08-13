# $OpenBSD: Makefile,v 1.1.1.1 2020/08/13 03:03:11 afresh1 Exp $

COMMENT =	utilities related to prime numbers, including fast sieves
DISTNAME =	Math-Prime-Util-0.73
CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
WANTLIB =		perl c m

RUN_DEPENDS =		math/p5-Math-Prime-Util-GMP>=0.50

.include <bsd.port.mk>
