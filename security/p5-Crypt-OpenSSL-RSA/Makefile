# $OpenBSD: Makefile,v 1.28 2022/02/26 09:39:07 sthen Exp $

COMMENT =	RSA encoding and decoding using OpenSSL

DISTNAME =	Crypt-OpenSSL-RSA-0.32

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan
BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess>=0.11
RUN_DEPENDS =		security/p5-Crypt-OpenSSL-Bignum \
			security/p5-Crypt-OpenSSL-Random

.include <bsd.port.mk>
