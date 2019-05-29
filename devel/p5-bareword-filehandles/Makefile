# $OpenBSD: Makefile,v 1.2 2019/05/29 15:04:53 fcambus Exp $

COMMENT =	disables bareword filehandles

DISTNAME =	bareword-filehandles-0.007

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-B-Hooks-OP-Check

RUN_DEPENDS =	devel/p5-B-Hooks-OP-Check

CPAN_AUTHOR =	ILMARI

.include <bsd.port.mk>
