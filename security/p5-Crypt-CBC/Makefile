# $OpenBSD: Makefile,v 1.21 2010/10/18 21:41:46 espie Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
DISTNAME=	Crypt-CBC-2.30
CATEGORIES=	security
USE_GROFF =	Yes

RUN_DEPENDS=	:p5-Crypt-DES-*:security/p5-Crypt-DES \
		:p5-Crypt-Blowfish-*:security/p5-Crypt-Blowfish
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
