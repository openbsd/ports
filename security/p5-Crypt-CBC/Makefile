# $OpenBSD: Makefile,v 1.26 2013/03/25 17:58:46 benoit Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
DISTNAME =	Crypt-CBC-2.32
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
