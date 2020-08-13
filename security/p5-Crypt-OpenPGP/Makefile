# $OpenBSD: Makefile,v 1.5 2020/08/13 03:09:52 afresh1 Exp $

COMMENT =	Pure-Perl OpenPGP implementation
DISTNAME =	Crypt-OpenPGP-1.12
CATEGORIES =	security
PKG_ARCH =	*


# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Data-Buffer>=0.04 \
		devel/p5-File-HomeDir \
		security/p5-Alt-Crypt-RSA-BigInt \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-CAST5_PP \
		security/p5-Crypt-DES-EDE3 \
		security/p5-Crypt-DSA \
		security/p5-Crypt-IDEA \
		security/p5-Crypt-RIPEMD160 \
		security/p5-Crypt-Rijndael \
		security/p5-Crypt-Twofish \
		www/p5-libwww \
		www/p5-URI

# See patches/patch-lib_Crypt_OpenPGP_Util_pm
RUN_DEPENDS +=	security/p5-Unix-OpenBSD-Random

TEST_DEPENDS =	devel/p5-Test-Exception

.include <bsd.port.mk>
