# $OpenBSD: Makefile,v 1.7 2007/01/15 17:40:10 simon Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	"implements DSA using OpenSSL"
DISTNAME=	Crypt-OpenSSL-DSA-0.13
CATEGORIES=	security

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

HOMEPAGE=	http://perl-openssl.sourceforge.net/

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

REGRESS_DEPENDS=	::security/p5-Digest-SHA1

.include <bsd.port.mk>
