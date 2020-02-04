# $OpenBSD: Makefile,v 1.4 2020/02/04 21:17:28 fcambus Exp $

COMMENT =	disables bareword filehandles

DISTNAME =	bareword-filehandles-0.007
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-B-Hooks-OP-Check

RUN_DEPENDS =	devel/p5-B-Hooks-OP-Check

CPAN_AUTHOR =	ILMARI

.include <bsd.port.mk>
