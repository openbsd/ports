# $OpenBSD: Makefile,v 1.10 2019/05/14 09:26:09 benoit Exp $

COMMENT =	module for rounded or exact english expression of durations

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Time-Duration-1.21
CATEGORIES =	devel

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=1 RELEASE_TESTING=1

.include <bsd.port.mk>
