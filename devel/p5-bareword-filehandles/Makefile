# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:20 sthen Exp $

COMMENT =	disables bareword filehandles

DISTNAME =	bareword-filehandles-0.007
REVISION =	1

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-B-Hooks-OP-Check

RUN_DEPENDS =	devel/p5-B-Hooks-OP-Check

CPAN_AUTHOR =	ILMARI

.include <bsd.port.mk>
