# $OpenBSD: Makefile,v 1.25 2008/10/02 20:39:33 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide LWP https support via OpenSSL

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.57
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

CONFIGURE_ARGS+=--default --lib=/usr

.include <bsd.port.mk>
