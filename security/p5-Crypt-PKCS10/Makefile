# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:41 sthen Exp $

COMMENT =	Perl extension to parse PKCS \#10 certificate requests

DISTNAME =	Crypt-PKCS10-2.001
CATEGORIES =	security
REVISION =	0

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
