# $OpenBSD: Makefile,v 1.3 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT=	produce RFC 2822 date strings

MODULES=	cpan
DISTNAME=	Email-Date-Format-1.002
REVISION=	0
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
