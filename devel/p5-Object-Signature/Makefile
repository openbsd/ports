# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:12 sthen Exp $

COMMENT=        cryptographic signatures for objects

MODULES=	cpan
DISTNAME=	Object-Signature-1.05
REVISION=	1
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
