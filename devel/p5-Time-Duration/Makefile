# $OpenBSD: Makefile,v 1.5 2013/10/11 23:49:25 naddy Exp $

COMMENT=        module for rounded or exact english expression of durations

MODULES=	cpan
DISTNAME=	Time-Duration-1.06
REVISION=	0
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV+=	TEST_POD=1

BUILD_DEPENDS+=	${TEST_DEPENDS}

.include <bsd.port.mk>
