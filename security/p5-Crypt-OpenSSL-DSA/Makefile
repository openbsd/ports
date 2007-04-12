# $OpenBSD: Makefile,v 1.8 2007/04/12 18:59:36 jasper Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	"implements DSA using OpenSSL"
DISTNAME=	Crypt-OpenSSL-DSA-0.13
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://perl-openssl.sourceforge.net/

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

REGRESS_DEPENDS=	::security/p5-Digest-SHA1

.include <bsd.port.mk>
