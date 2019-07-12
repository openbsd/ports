# $OpenBSD: Makefile,v 1.2 2019/07/12 21:02:25 sthen Exp $

COMMENT =	ECDSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-ECDSA-0.08
CATEGORIES =	security

# Perl
PERMIT_PACKAGE = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-EC>=0.05
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
