# $OpenBSD: Makefile,v 1.12 2004/06/26 07:35:09 xsa Exp $

COMMENT=	"cryptographic cipher block chaining mode"

VERSION=	2.10
DISTNAME=	Crypt-CBC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

RUN_DEPENDS=	:p5-Crypt-DES-*:security/p5-Crypt-DES \
		:p5-Crypt-Blowfish-*:security/p5-Crypt-Blowfish
BUILD_DEPENDS=	${RUN_DEPENDS}

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
