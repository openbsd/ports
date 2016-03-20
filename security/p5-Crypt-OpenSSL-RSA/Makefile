# $OpenBSD: Makefile,v 1.23 2016/03/20 19:57:00 naddy Exp $

COMMENT =	RSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-RSA-0.28
CATEGORIES =	security
REVISION =	1

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Random>=0.03 \
		security/p5-Crypt-OpenSSL-Bignum>=0.03
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
