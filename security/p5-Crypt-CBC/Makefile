# $OpenBSD: Makefile,v 1.29 2019/07/12 21:02:24 sthen Exp $

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
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
