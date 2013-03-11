# $OpenBSD: Makefile,v 1.25 2013/03/11 11:41:26 espie Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
DISTNAME=	Crypt-CBC-2.30
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

RUN_DEPENDS=	security/p5-Crypt-DES \
		security/p5-Crypt-Blowfish \
		security/p5-Crypt-Rijndael
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
