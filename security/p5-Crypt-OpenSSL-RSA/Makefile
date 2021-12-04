# $OpenBSD: Makefile,v 1.27 2021/12/04 21:37:58 tb Exp $

COMMENT =	RSA encoding and decoding using OpenSSL

DISTNAME =	Crypt-OpenSSL-RSA-0.31
REVISION =	0

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan
BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess>=0.11
RUN_DEPENDS =		security/p5-Crypt-OpenSSL-Bignum \
			security/p5-Crypt-OpenSSL-Random

.include <bsd.port.mk>
