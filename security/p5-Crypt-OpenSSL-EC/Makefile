# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:41 sthen Exp $

COMMENT =	EC using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-EC-1.31
CATEGORIES =	security
REVISION =	0

# Perl
PERMIT_PACKAGE = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Bignum>=0.04
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
