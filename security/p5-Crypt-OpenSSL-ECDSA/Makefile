# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:41 sthen Exp $

COMMENT =	ECDSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-ECDSA-0.08
CATEGORIES =	security
REVISION =	0

# Perl
PERMIT_PACKAGE = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-EC>=0.05
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
