# $OpenBSD: Makefile,v 1.12 2012/12/13 16:34:48 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL's multiprecision integer arithmetic

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Bignum-0.04
REVISION=	3
CATEGORIES=	security
USE_GROFF =	Yes

HOMEPAGE=	http://perl-openssl.sourceforge.net/

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto

.include <bsd.port.mk>
