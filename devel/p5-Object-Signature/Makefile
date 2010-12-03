# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=        cryptographic signatures for objects

MODULES=	cpan
DISTNAME=	Object-Signature-1.05
REVISION=	2
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
