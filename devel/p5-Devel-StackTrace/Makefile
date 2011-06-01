# $OpenBSD: Makefile,v 1.17 2011/06/01 17:41:48 jasper Exp $

COMMENT=	stack trace and stack trace frame objects

MODULES=	cpan
DISTNAME=	Devel-StackTrace-1.27
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
