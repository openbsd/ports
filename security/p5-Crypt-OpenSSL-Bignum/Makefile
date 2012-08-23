# $OpenBSD: Makefile,v 1.11 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL's multiprecision integer arithmetic

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Bignum-0.04
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

HOMEPAGE=	http://perl-openssl.sourceforge.net/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto

.include <bsd.port.mk>
