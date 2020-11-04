# $OpenBSD: Makefile,v 1.21 2020/11/04 13:13:42 benoit Exp $

COMMENT =	interface to the rijndael encryption algorithm aka AES

MODULES =	cpan
DISTNAME =	Crypt-Rijndael-1.15
CATEGORIES =	security

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>	
