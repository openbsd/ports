# $OpenBSD: Makefile,v 1.1.1.1 2020/08/13 03:05:17 afresh1 Exp $

COMMENT =	RSA public-key cryptosystem, using Math::BigInt
DISTNAME =	Alt-Crypt-RSA-BigInt-0.06
CPAN_AUTHOR =	DANAJ
CATEGORIES =	security
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	converters/p5-Convert-ASCII-Armour \
		devel/p5-Class-Loader \
		devel/p5-Data-Buffer \
		math/p5-Math-BigInt-GMP \
		math/p5-Math-Prime-Util>=0.64 \
		math/p5-Math-Prime-Util-GMP \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-CBC>=2.17 \
		security/p5-Digest-MD2 \
		security/p5-Tie-EncryptedHash \
		textproc/p5-Sort-Versions

.include <bsd.port.mk>
