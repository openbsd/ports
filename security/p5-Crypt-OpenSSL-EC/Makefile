# $OpenBSD: Makefile,v 1.3 2019/07/12 21:02:25 sthen Exp $

COMMENT =	EC using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-EC-1.31
CATEGORIES =	security

# Perl
PERMIT_PACKAGE = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Bignum>=0.04
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
