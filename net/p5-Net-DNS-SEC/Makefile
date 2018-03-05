# $OpenBSD: Makefile,v 1.27 2018/03/05 16:14:03 bluhm Exp $

COMMENT =	extends the Net::DNS module with DNSSEC functionality

DISTNAME =	Net-DNS-SEC-1.04
SUPDISTFILES =  ${DISTFILES}.asc

CATEGORIES =	net security

HOMEPAGE =	http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto perl

MASTER_SITES =		http://www.net-dns.org/download/

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-DNS>=1.01 \
			security/p5-Crypt-OpenSSL-Bignum>=0.05 \
			security/p5-Crypt-OpenSSL-EC>=1.01 \
			security/p5-Crypt-OpenSSL-ECDSA>=0.06 \
			security/p5-Crypt-OpenSSL-RSA>=0.28 \
			security/p5-Crypt-OpenSSL-Random>=0.10
TEST_DEPENDS =		devel/p5-Test-Pod>=1.45

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demo

.include <bsd.port.mk>
