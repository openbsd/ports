COMMENT =	DSA signatures and key generation

DISTNAME =	Crypt-DSA-1.19

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		converters/p5-Convert-PEM>=0.13 \
			devel/p5-Data-Buffer>=0.01 \
			sysutils/p5-File-Which>=0.05
RUN_DEPENDS =		converters/p5-Convert-ASN1 \
			converters/p5-Convert-PEM>=0.13 \
			devel/p5-Data-Buffer>=0.01 \
			security/p5-Crypt-URandom \
			sysutils/p5-File-Which>=0.05
TEST_DEPENDS =		security/p5-Crypt-DES-EDE3

PKG_ARCH =		*

.include <bsd.port.mk>
