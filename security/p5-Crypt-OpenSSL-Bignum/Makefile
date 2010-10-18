# $OpenBSD: Makefile,v 1.10 2010/10/18 21:41:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL's multiprecision integer arithmetic

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Bignum-0.04
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

HOMEPAGE=	http://perl-openssl.sourceforge.net/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto

.include <bsd.port.mk>
