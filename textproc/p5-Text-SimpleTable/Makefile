# $OpenBSD: Makefile,v 1.9 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT=	simple eyecandy ASCII Tables

DISTNAME=	Text-SimpleTable-2.03
REVISION=	0
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
