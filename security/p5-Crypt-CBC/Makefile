# $OpenBSD: Makefile,v 1.28 2016/03/20 19:56:59 naddy Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Crypt-CBC-2.33
CATEGORIES=	security

RUN_DEPENDS=	security/p5-Crypt-DES \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-Rijndael
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
