# $OpenBSD: Makefile,v 1.7 2008/10/02 20:39:33 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL's multiprecision integer arithmetic

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Bignum-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

HOMEPAGE=	http://perl-openssl.sourceforge.net/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto

.include <bsd.port.mk>
