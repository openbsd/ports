# $OpenBSD: Makefile,v 1.20 2014/11/21 09:40:32 benoit Exp $

SHARED_ONLY =	Yes

COMMENT =	library of advanced math functions

MODULES =	cpan
DISTNAME =	Bit-Vector-7.4
CATEGORIES =	math

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
