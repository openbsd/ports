# $OpenBSD: Makefile,v 1.1.1.1 2014/10/08 11:30:56 henning Exp $

COMMENT=	pure perl implementation of OpenPGP

DISTNAME=	Crypt-OpenPGP-1.07
CATEGORIES=	devel security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	security/p5-Crypt-Blowfish \
		security/p5-Crypt-DES-EDE3 \
		security/p5-Crypt-DSA \
		security/p5-Crypt-RSA \
		security/p5-Crypt-Rijndael \
		security/p5-Crypt-Twofish \
		security/p5-Crypt-CAST5_PP \
		security/p5-Crypt-IDEA \
		security/p5-Crypt-RIPEMD160 \
		devel/p5-Data-Buffer \
		security/p5-Digest-SHA1 \
		devel/p5-File-HomeDir \
		www/p5-libwww \
		www/p5-URI

CPAN_AUTHOR=	SROMANOV

.include <bsd.port.mk>
