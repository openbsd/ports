# $OpenBSD: Makefile,v 1.41 2020/07/03 21:45:41 sthen Exp $

COMMENT =		library to provide LWP https support via OpenSSL

DISTNAME =		Crypt-SSLeay-0.72
REVISION =		3

CATEGORIES =		security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto perl ssl z

MODULES =		cpan

# Include p5-IO-Socket-SSL as selected
# dependency for p5-Net-HTTP must be before
# p5-LWP-Protcol-https must be present and
# in this order to avoid looping dependencies
BUILD_DEPENDS =		devel/p5-Devel-CheckLib>=0.99 \
			devel/p5-Path-Class>=0.26 \
			devel/p5-Try-Tiny>=0.19 \
			security/p5-IO-Socket-SSL \
			www/p5-LWP-Protocol-https>=6.02
RUN_DEPENDS =		www/p5-LWP-Protocol-https>=6.02
TEST_DEPENDS =		devel/p5-Try-Tiny>=0.19

CONFIGURE_ARGS +=	--lib=/usr

# Use make -D LIVE_TEST regress to run regression with live tests
# --live_tests configure argument doesn't work.
pre-test:
.ifdef	LIVE_TEST
	echo "network_tests	1" >${WRKSRC}/test.config
.endif

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
