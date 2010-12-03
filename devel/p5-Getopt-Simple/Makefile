# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=	simple wrapper around Getopt::Long

DISTNAME=	Getopt-Simple-1.49
REVISION=	0
CATEGORIES=     devel

EXTRACT_SUFX=	.tgz
MAINTAINER=	Claudio Jeker <claudio@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan
USE_GROFF =	Yes

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
