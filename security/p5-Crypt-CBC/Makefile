# $OpenBSD: Makefile,v 1.9 2002/09/12 15:57:33 danh Exp $

COMMENT=	"cryptographic cipher block chaining mode"

VERSION=	2.08
DISTNAME=	Crypt-CBC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

BUILD_DEPENDS=	:p5-Digest-MD5->=2:security/p5-Digest-MD5 \
		:p5-Crypt-DES-*:security/p5-Crypt-DES \
		:p5-Crypt-Blowfish-*:security/p5-Crypt-Blowfish
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
