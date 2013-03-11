# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:23 espie Exp $

COMMENT=        module for rounded or exact english expression of durations

MODULES=	cpan
DISTNAME=	Time-Duration-1.06
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV+=	TEST_POD=1

BUILD_DEPENDS+=	${TEST_DEPENDS}

.include <bsd.port.mk>
