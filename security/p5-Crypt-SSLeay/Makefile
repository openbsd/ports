# $OpenBSD: Makefile,v 1.19 2007/01/15 17:40:10 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"library to provide LWP https support via OpenSSL"

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.51
CATEGORIES=	security

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

.include <bsd.port.mk>
