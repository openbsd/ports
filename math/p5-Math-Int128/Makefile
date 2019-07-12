# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:45 sthen Exp $

ONLY_FOR_ARCHS = ${LP64_ARCHS}

COMMENT =	manipulate 128 bits integers in Perl

DISTNAME =	Math-Int128-0.22

CATEGORIES =	math

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

RUN_DEPENDS =	math/p5-Math-Int64

.include <bsd.port.mk>
