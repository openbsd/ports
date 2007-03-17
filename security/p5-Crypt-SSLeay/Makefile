# $OpenBSD: Makefile,v 1.21 2007/03/17 15:17:32 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"library to provide LWP https support via OpenSSL"

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.51
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

.include <bsd.port.mk>
