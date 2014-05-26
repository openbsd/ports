# $OpenBSD: Makefile,v 1.47 2014/05/26 21:51:36 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		module to interface the DNS resolver

DISTNAME =		Net-DNS-0.76

CATEGORIES =		net

HOMEPAGE =		http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-Digest-HMAC>=1.01
TEST_DEPENDS =		devel/p5-Test-Pod \
			net/p5-Net-DNS-SEC \
			net/p5-IO-Socket-INET6 \
			security/p5-Digest-BubbleBabble

CONFIGURE_ARGS =	--online-tests

.include <bsd.port.mk>
