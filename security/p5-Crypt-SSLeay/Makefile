# $OpenBSD: Makefile,v 1.28 2010/10/18 21:41:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide LWP https support via OpenSSL

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.57
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

CONFIGURE_ARGS+=--default --lib=/usr

.include <bsd.port.mk>
