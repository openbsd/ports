# $OpenBSD: Makefile,v 1.3 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	parses 'folksonomy' space-separated tags

MODULES=	cpan
DISTNAME=	Text-Tags-0.04
REVISION=	0
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
