# $OpenBSD: Makefile,v 1.19 2020/02/22 21:43:55 benoit Exp $

COMMENT =	interface to the rijndael encryption algorithm aka AES

MODULES =	cpan
DISTNAME =	Crypt-Rijndael-1.14
CATEGORIES =	security

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>	
