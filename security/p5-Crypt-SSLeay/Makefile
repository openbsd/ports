# $OpenBSD: Makefile,v 1.34 2014/04/25 23:51:54 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		library to provide LWP https support via OpenSSL

DISTNAME =		Crypt-SSLeay-0.64

CATEGORIES =		security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto ssl z

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Try-Tiny \
			www/p5-libwww

CONFIGURE_ARGS +=	--default --lib=/usr

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
