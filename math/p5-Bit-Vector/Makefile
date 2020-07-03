# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:28 sthen Exp $

COMMENT =	library of advanced math functions

MODULES =	cpan
DISTNAME =	Bit-Vector-7.4
CATEGORIES =	math
REVISION =	1

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
