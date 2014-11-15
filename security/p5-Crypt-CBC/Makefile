# $OpenBSD: Makefile,v 1.27 2014/11/15 10:05:28 benoit Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
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
