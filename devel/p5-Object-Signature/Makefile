# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:50 simon Exp $

COMMENT=        "cryptographic signatures for objects"

MODULES=	cpan
DISTNAME=	Object-Signature-1.05
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
