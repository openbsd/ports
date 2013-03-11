# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:27 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the rijndael encryption algorithm aka AES

MODULES=	cpan
DISTNAME=	Crypt-Rijndael-1.09
REVISION=	0
CATEGORIES=	security

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MAKE_ENV+=     TEST_POD=1

.include <bsd.port.mk>	
