# $OpenBSD: Makefile,v 1.16 2015/06/09 07:18:57 benoit Exp $

SHARED_ONLY =	Yes

COMMENT =	interface to the rijndael encryption algorithm aka AES

MODULES =	cpan
DISTNAME =	Crypt-Rijndael-1.13
CATEGORIES =	security

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>	
