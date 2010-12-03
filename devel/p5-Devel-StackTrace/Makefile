# $OpenBSD: Makefile,v 1.14 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=	stack trace and stack trace frame objects

MODULES=	cpan
DISTNAME=	Devel-StackTrace-1.22
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=Yes \
		IS_MAINTAINER=1

.include <bsd.port.mk>
