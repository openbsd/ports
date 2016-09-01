# $OpenBSD: Makefile,v 1.26 2016/09/01 09:08:35 bluhm Exp $

COMMENT =		extends the Net::DNS module with DNSSEC functionality

DISTNAME =		Net-DNS-SEC-1.03

CATEGORIES =		net security

HOMEPAGE =		http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.net-dns.org/download/

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		net/p5-Net-DNS>=1.01 \
			security/p5-Crypt-OpenSSL-RSA>=0.28 \
			security/p5-Crypt-OpenSSL-Bignum>=0.05
TEST_DEPENDS =		devel/p5-Test-Pod>=1.45 \
			security/p5-Crypt-OpenSSL-DSA>=0.15 \
			security/p5-Crypt-OpenSSL-Random>=0.10

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demo

.include <bsd.port.mk>
