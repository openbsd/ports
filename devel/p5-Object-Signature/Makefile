# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT=        "cryptographic signatures for objects"

MODULES=	cpan
DISTNAME=	Object-Signature-1.05
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=     devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
