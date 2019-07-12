# $OpenBSD: Makefile,v 1.35 2019/07/12 20:48:37 sthen Exp $

COMMENT =	extends the Net::DNS module with DNSSEC functionality

DISTNAME =	Net-DNS-SEC-1.13
SUPDISTFILES =  ${DISTFILES}.asc

CATEGORIES =	net security

HOMEPAGE =	http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl

MASTER_SITES =		http://www.net-dns.org/download/

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-DNS>=1.08
TEST_DEPENDS =		devel/p5-Test-Pod>=1.45

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demo

.include <bsd.port.mk>
