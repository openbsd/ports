# $OpenBSD: Makefile,v 1.3 2008/07/15 18:18:22 dhill Exp $

COMMENT=	simple wrapper around Getopt::Long

DISTNAME=	Getopt-Simple-1.49
CATEGORIES=     devel

EXTRACT_SUFX=	.tgz
MAINTAINER=	Claudio Jeker <claudio@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
