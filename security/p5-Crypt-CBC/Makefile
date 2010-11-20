# $OpenBSD: Makefile,v 1.22 2010/11/20 17:22:44 espie Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
DISTNAME=	Crypt-CBC-2.30
CATEGORIES=	security
USE_GROFF =	Yes

RUN_DEPENDS=	security/p5-Crypt-DES \
		security/p5-Crypt-Blowfish
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>	
