# $OpenBSD: Makefile,v 1.7 2014/11/15 15:06:42 benoit Exp $

COMMENT=        module for rounded or exact english expression of durations

MODULES=	cpan
DISTNAME =	Time-Duration-1.1
CATEGORIES=     devel

EPOCH =		0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV+=	TEST_POD=1

BUILD_DEPENDS+=	${TEST_DEPENDS}

.include <bsd.port.mk>
