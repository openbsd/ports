# $OpenBSD: Makefile,v 1.12 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the rijndael encryption algorithm aka AES

MODULES=	cpan
DISTNAME=	Crypt-Rijndael-1.09
REVISION=	0
CATEGORIES=	security

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

MAKE_ENV+=     TEST_POD=1

.include <bsd.port.mk>	
