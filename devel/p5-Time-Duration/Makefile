# $OpenBSD: Makefile,v 1.3 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT=        module for rounded or exact english expression of durations

MODULES=	cpan
DISTNAME=	Time-Duration-1.06
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV+=	TEST_POD=1

BUILD_DEPENDS+=	${REGRESS_DEPENDS}

.include <bsd.port.mk>
