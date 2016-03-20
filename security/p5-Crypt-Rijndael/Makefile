# $OpenBSD: Makefile,v 1.17 2016/03/20 19:57:00 naddy Exp $

COMMENT =	interface to the rijndael encryption algorithm aka AES

MODULES =	cpan
DISTNAME =	Crypt-Rijndael-1.13
CATEGORIES =	security

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>	
