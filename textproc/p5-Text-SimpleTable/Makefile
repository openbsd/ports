# $OpenBSD: Makefile,v 1.8 2010/10/19 07:54:24 espie Exp $

COMMENT=	simple eyecandy ASCII Tables

DISTNAME=	Text-SimpleTable-2.03
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
