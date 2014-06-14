# $OpenBSD: Makefile,v 1.14 2014/06/14 23:26:00 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the rijndael encryption algorithm aka AES

MODULES=	cpan
DISTNAME=	Crypt-Rijndael-1.09
REVISION=	1
CATEGORIES=	security

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MAKE_ENV+=     TEST_POD=1

.include <bsd.port.mk>	
