# $OpenBSD: Makefile,v 1.2 2010/10/18 19:59:17 espie Exp $

COMMENT=	produce RFC 2822 date strings

MODULES=	cpan
DISTNAME=	Email-Date-Format-1.002
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
