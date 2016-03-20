# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:40 naddy Exp $

COMMENT =	module for rounded or exact english expression of durations

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Time-Duration-1.20
CATEGORIES =	devel

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=1

BUILD_DEPENDS +=	${TEST_DEPENDS}

.include <bsd.port.mk>
