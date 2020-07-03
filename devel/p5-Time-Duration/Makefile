# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:18 sthen Exp $

COMMENT =	module for rounded or exact english expression of durations

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Time-Duration-1.21
CATEGORIES =	devel
REVISION =	0

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=1 RELEASE_TESTING=1

.include <bsd.port.mk>
