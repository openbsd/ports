# $OpenBSD: Makefile,v 1.26 2021/05/31 21:02:03 bluhm Exp $

COMMENT =	RSA encoding and decoding using OpenSSL

DISTNAME =	Crypt-OpenSSL-RSA-0.31

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan
BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess>=0.11
RUN_DEPENDS =		security/p5-Crypt-OpenSSL-Bignum \
			security/p5-Crypt-OpenSSL-Random

.include <bsd.port.mk>
