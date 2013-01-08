# $OpenBSD: Makefile,v 1.18 2013/01/08 21:58:08 benoit Exp $

COMMENT=	stack trace and stack trace frame objects

MODULES=	cpan
DISTNAME=	Devel-StackTrace-1.30
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=Yes \
		IS_MAINTAINER=1

.include <bsd.port.mk>
