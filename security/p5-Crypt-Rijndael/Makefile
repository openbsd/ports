# $OpenBSD: Makefile,v 1.15 2014/11/15 15:15:16 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the rijndael encryption algorithm aka AES

MODULES=	cpan
DISTNAME =	Crypt-Rijndael-1.12
CATEGORIES=	security

# LGPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MAKE_ENV+=     TEST_POD=1

.include <bsd.port.mk>	
