# $OpenBSD: Makefile,v 1.57 2015/08/24 16:12:03 bluhm Exp $

COMMENT =		perl interface to the domain name system

DISTNAME =		Net-DNS-1.01

CATEGORIES =		net

HOMEPAGE =		http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.net-dns.org/download/

MODULES =		cpan
RUN_DEPENDS =		mail/p5-MIME-Base32>=1.01 \
			security/p5-Digest-HMAC>=1.03
TEST_DEPENDS =		devel/p5-Test-Pod>=1.45 \
			net/p5-IO-Socket-INET6>=2.01 \
			net/p5-Net-DNS-SEC>=1.01 \
			net/p5-Net-LibIDN>=0.12 \
			security/p5-Digest-BubbleBabble>=0.01

CONFIGURE_ARGS =	--noonline-tests

.include <bsd.port.mk>
