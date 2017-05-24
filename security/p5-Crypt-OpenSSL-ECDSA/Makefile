# $OpenBSD: Makefile,v 1.1.1.1 2017/05/24 18:35:14 bluhm Exp $

COMMENT =	ECDSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-ECDSA-0.08
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-EC>=0.05
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
