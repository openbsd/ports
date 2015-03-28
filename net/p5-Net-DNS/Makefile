# $OpenBSD: Makefile,v 1.55 2015/03/28 16:43:07 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		module to interface the DNS resolver

DISTNAME =		Net-DNS-0.83

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

CONFIGURE_ARGS =	--noonline-tests

.include <bsd.port.mk>
