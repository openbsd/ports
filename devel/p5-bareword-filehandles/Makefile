# $OpenBSD: Makefile,v 1.1.1.1 2018/07/09 14:08:21 fcambus Exp $

COMMENT =	disables bareword filehandles

DISTNAME =	bareword-filehandles-0.006

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
