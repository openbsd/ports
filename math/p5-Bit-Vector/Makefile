# $OpenBSD: Makefile,v 1.21 2015/07/16 23:57:25 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	library of advanced math functions

MODULES =	cpan
DISTNAME =	Bit-Vector-7.4
CATEGORIES =	math
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
