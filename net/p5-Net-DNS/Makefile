# $OpenBSD: Makefile,v 1.56 2015/07/10 22:20:33 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl interface to the domain name system

DISTNAME =		Net-DNS-0.83
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		security/p5-Digest-HMAC>=1.01
TEST_DEPENDS =		devel/p5-Test-Pod \
			net/p5-IO-Socket-INET6 \
			net/p5-Net-DNS-SEC \
			net/p5-Net-LibIDN \
			security/p5-Digest-BubbleBabble

CONFIGURE_ARGS =	--noonline-tests

.include <bsd.port.mk>
