# $OpenBSD: Makefile,v 1.1.1.1 2018/02/28 15:31:42 fcambus Exp $

ONLY_FOR_ARCHS = ${LP64_ARCHS}

COMMENT =	manipulate 128 bits integers in Perl

DISTNAME =	Math-Int128-0.22

CATEGORIES =	math

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

RUN_DEPENDS =	math/p5-Math-Int64

.include <bsd.port.mk>
