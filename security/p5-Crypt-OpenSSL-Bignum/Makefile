# $OpenBSD: Makefile,v 1.9 2010/09/24 15:32:34 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL's multiprecision integer arithmetic

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Bignum-0.04
REVISION=	1
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
