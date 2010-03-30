# $OpenBSD: Makefile,v 1.12 2010/03/30 10:45:41 stephan Exp $

COMMENT=	stack trace and stack trace frame objects

MODULES=	cpan
DISTNAME=	Devel-StackTrace-1.22
CATEGORIES=	devel

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=Yes \
		IS_MAINTAINER=1

.include <bsd.port.mk>
