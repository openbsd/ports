# $OpenBSD: Makefile,v 1.7 2010/10/18 17:48:04 espie Exp $

COMMENT=        cryptographic signatures for objects

MODULES=	cpan
DISTNAME=	Object-Signature-1.05
REVISION=	1
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
