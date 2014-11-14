# $OpenBSD: Makefile,v 1.6 2014/11/14 08:41:03 benoit Exp $

COMMENT=        module for rounded or exact english expression of durations

MODULES=	cpan
DISTNAME =	Time-Duration-1.1
CATEGORIES=     devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV+=	TEST_POD=1

BUILD_DEPENDS+=	${TEST_DEPENDS}

.include <bsd.port.mk>
