# $OpenBSD: Makefile,v 1.22 2007/04/21 20:19:33 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	"library to provide LWP https support via OpenSSL"

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.54
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

.include <bsd.port.mk>
