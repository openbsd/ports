COMMENT =	DSA signatures and key generation

DISTNAME =	Crypt-DSA-GMP-0.02

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-Convert-PEM>=0.07 \
			devel/p5-Data-Buffer>=0.04 \
			math/p5-Math-BigInt-GMP \
			math/p5-Math-Prime-Util-GMP>=0.15 \
			security/p5-Unix-OpenBSD-Random
TEST_DEPENDS =		security/p5-Crypt-DSA \
			security/p5-Crypt-OpenSSL-DSA \
			security/p5-CryptX

PKG_ARCH =		*

.include <bsd.port.mk>
