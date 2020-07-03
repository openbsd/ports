# $OpenBSD: Makefile,v 1.30 2020/07/03 21:45:40 sthen Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Crypt-CBC-2.33
CATEGORIES=	security
REVISION =	0

RUN_DEPENDS=	security/p5-Crypt-DES \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-Rijndael
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
