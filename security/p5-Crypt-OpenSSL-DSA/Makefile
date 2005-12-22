# $OpenBSD: Makefile,v 1.6 2005/12/22 07:32:03 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"implements DSA using OpenSSL"
DISTNAME=	Crypt-OpenSSL-DSA-0.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

HOMEPAGE=	http://perl-openssl.sourceforge.net/

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Crypt/}

REGRESS_DEPENDS=	::security/p5-Digest-SHA1

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
