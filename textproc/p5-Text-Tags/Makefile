# $OpenBSD: Makefile,v 1.1.1.1 2007/10/06 15:26:54 simon Exp $

COMMENT=	parses 'folksonomy' space-separated tags

MODULES=	cpan
DISTNAME=	Text-Tags-0.04
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
