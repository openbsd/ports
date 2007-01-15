# $OpenBSD: Makefile,v 1.15 2007/01/15 17:40:10 simon Exp $

COMMENT=	"cryptographic cipher block chaining mode"

MODULES=	cpan
DISTNAME=	Crypt-CBC-2.17
CATEGORIES=	security

RUN_DEPENDS=	:p5-Crypt-DES-*:security/p5-Crypt-DES \
		:p5-Crypt-Blowfish-*:security/p5-Crypt-Blowfish
BUILD_DEPENDS=	${RUN_DEPENDS}

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.include <bsd.port.mk>	
