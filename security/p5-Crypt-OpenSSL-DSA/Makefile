# $OpenBSD: Makefile,v 1.5 2004/12/27 13:28:34 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"implements DSA using OpenSSL"

VERSION=	0.11
DISTNAME=	Crypt-OpenSSL-DSA-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
HOMEPAGE=	http://perl-openssl.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=	Wesley Griffin <wgriffin@jtan.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

RUN_DEPENDS=	:p5-Crypt-OpenSSL-Random->=0.03:security/p5-Crypt-OpenSSL-Random
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
