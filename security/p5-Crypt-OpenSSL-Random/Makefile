# $OpenBSD: Makefile,v 1.4 2004/12/27 13:28:34 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"routines for accessing the OpenSSL prng"

VERSION=	0.03
DISTNAME=	Crypt-OpenSSL-Random-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
HOMEPAGE=	http://perl-openssl.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=	Wesley Griffin <wgriffin@jtan.com>

PERMIT_PACKAGE_CDROM=	"No license"
PERMIT_PACKAGE_FTP=	"No license"
PERMIT_DISTFILES_CDROM=	"No license"
PERMIT_DISTFILES_FTP=	"No license"
WANTLIB=		crypto ssl

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
