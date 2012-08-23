# $OpenBSD: Makefile,v 1.31 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide LWP https support via OpenSSL

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.58
REVISION=	0
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto ssl

CONFIGURE_ARGS+=--default --lib=/usr

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
