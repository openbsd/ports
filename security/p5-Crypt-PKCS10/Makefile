# $OpenBSD: Makefile,v 1.1.1.1 2019/10/31 06:19:07 bentley Exp $

COMMENT =	Perl extension to parse PKCS \#10 certificate requests

DISTNAME =	Crypt-PKCS10-2.001
CATEGORIES =	security

# perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	converters/p5-Convert-ASN1 \
		security/p5-Crypt-OpenSSL-DSA \
		security/p5-Crypt-OpenSSL-RSA \
		security/p5-CryptX

BUILD_DEPENDS = ${RUN_DEPENDS}

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
