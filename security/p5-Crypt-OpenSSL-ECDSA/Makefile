# $OpenBSD: Makefile,v 1.4 2021/05/31 14:09:21 bluhm Exp $

COMMENT =	ECDSA encoding and decoding using OpenSSL

DISTNAME =	Crypt-OpenSSL-ECDSA-0.10

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl

MODULES =		cpan
RUN_DEPENDS =		security/p5-Crypt-OpenSSL-EC>=0.05

.include <bsd.port.mk>
