# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:24 espie Exp $

COMMENT=	parses 'folksonomy' space-separated tags

MODULES=	cpan
DISTNAME=	Text-Tags-0.04
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
