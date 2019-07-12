# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:14 sthen Exp $

COMMENT =	disables bareword filehandles

DISTNAME =	bareword-filehandles-0.007

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-B-Hooks-OP-Check

RUN_DEPENDS =	devel/p5-B-Hooks-OP-Check

CPAN_AUTHOR =	ILMARI

.include <bsd.port.mk>
