# $OpenBSD: Makefile,v 1.6 2017/12/29 07:23:08 florian Exp $

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
DISTNAME =	Net-LDNS-0.75
CATEGORIES =	net
REVISION =	1

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto idn perl

LIB_DEPENDS =	devel/libidn
BUILD_DEPENDS =	devel/p5-Devel-CheckLib
TEST_DEPENDS =	devel/p5-Test-Fatal

CONFIGURE_ARGS = --libs=${LOCALBASE}/lib

.include <bsd.port.mk>
