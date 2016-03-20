# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:47 naddy Exp $

COMMENT =	library of advanced math functions

MODULES =	cpan
DISTNAME =	Bit-Vector-7.4
CATEGORIES =	math
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
