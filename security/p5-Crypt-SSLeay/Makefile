# $OpenBSD: Makefile,v 1.33 2013/03/11 11:41:27 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide LWP https support via OpenSSL

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.64
CATEGORIES=	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		c crypto ssl z

TEST_DEPENDS =	devel/p5-Try-Tiny \
			www/p5-libwww

CONFIGURE_ARGS+=--default --lib=/usr

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
