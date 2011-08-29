# $OpenBSD: Makefile,v 1.24 2011/08/29 10:58:26 jasper Exp $

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
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
