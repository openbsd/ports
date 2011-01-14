# $OpenBSD: Makefile,v 1.16 2011/01/14 22:50:56 jasper Exp $

COMMENT=	stack trace and stack trace frame objects

MODULES=	cpan
DISTNAME=	Devel-StackTrace-1.26
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=Yes \
		IS_MAINTAINER=1

.include <bsd.port.mk>
