# $OpenBSD: Makefile,v 1.1.1.1 2017/05/24 18:24:07 bluhm Exp $

COMMENT =	EC using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-EC-1.01
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Bignum>=0.04
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
