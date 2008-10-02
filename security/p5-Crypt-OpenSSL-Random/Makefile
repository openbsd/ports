# $OpenBSD: Makefile,v 1.8 2008/10/02 20:39:33 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	routines for accessing the OpenSSL prng

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Random-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security
HOMEPAGE=	http://perl-openssl.sourceforge.net/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

.include <bsd.port.mk>
