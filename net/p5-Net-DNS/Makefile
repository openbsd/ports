# $OpenBSD: Makefile,v 1.70 2017/08/23 12:40:46 bluhm Exp $

COMMENT =		perl interface to the domain name system

DISTNAME =		Net-DNS-1.12
SUPDISTFILES =		${DISTFILES}.asc

CATEGORIES =		net

HOMEPAGE =		http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.net-dns.org/download/

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		security/p5-Digest-HMAC>=1.03
TEST_DEPENDS =		devel/p5-Test-Pod>=1.45 \
			net/p5-IO-Socket-INET6>=2.51 \
			net/p5-Net-DNS-SEC>=1.01 \
			net/p5-Net-LibIDN>=0.12 \
			security/p5-Digest-BubbleBabble>=0.01

CONFIGURE_ARGS =	--noonline-tests

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demo

.include <bsd.port.mk>
