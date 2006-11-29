# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:30 espie Exp $

COMMENT=        "cryptographic signatures for objects"

MODULES=	cpan
DISTNAME=	Object-Signature-1.05
CATEGORIES=     devel

MAINTAINER=	Simon Dassow <janus@errornet.de>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
