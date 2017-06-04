# $OpenBSD: Makefile,v 1.2 2017/06/04 08:12:40 benoit Exp $

COMMENT =	EC using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-EC-1.31
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Bignum>=0.04
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
