# $OpenBSD: Makefile,v 1.3 2004/01/17 15:58:09 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"RSA encoding and decoding using OpenSSL"

VERSION=	0.19
DISTNAME=	Crypt-OpenSSL-RSA-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
HOMEPAGE=	http://perl-openssl.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=	Wesley Griffin <wgriffin@jtan.com>

PERMIT_PACKAGE_CDROM=	"No license"
PERMIT_PACKAGE_FTP=	"No license"
PERMIT_DISTFILES_CDROM=	"No license"
PERMIT_DISTFILES_FTP=	"No license"

BUILD_DEPENDS=		:p5-Crypt-OpenSSL-Random->=0.03:security/p5-Crypt-OpenSSL-Random
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
