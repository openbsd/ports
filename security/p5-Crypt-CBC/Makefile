# $OpenBSD: Makefile,v 1.31 2021/05/22 16:23:44 afresh1 Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Crypt-CBC-3.03
CATEGORIES=	security

RUN_DEPENDS=	security/p5-Crypt-DES \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-PBKDF2 \
		security/p5-Crypt-Rijndael \
		security/p5-CryptX
TEST_DEPENDS=	security/p5-Crypt-Blowfish_PP \
		security/p5-Crypt-IDEA

# Perl
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
