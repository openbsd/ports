# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:41 sthen Exp $

COMMENT =	interface to the rijndael encryption algorithm aka AES

MODULES =	cpan
DISTNAME =	Crypt-Rijndael-1.14
CATEGORIES =	security
REVISION =	0

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>	
