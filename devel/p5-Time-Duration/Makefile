# $OpenBSD: Makefile,v 1.8 2015/04/27 08:04:25 benoit Exp $

COMMENT =	module for rounded or exact english expression of durations

MODULES =	cpan
DISTNAME =	Time-Duration-1.20
CATEGORIES =	devel

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=1

BUILD_DEPENDS +=	${TEST_DEPENDS}

.include <bsd.port.mk>
