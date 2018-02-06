# $OpenBSD: Makefile,v 1.1 2018/02/06 21:55:39 sthen Exp $

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
DISTNAME =	Zonemaster-LDNS-1.0.2
CATEGORIES =	net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto idn perl

LIB_DEPENDS =	devel/libidn
BUILD_DEPENDS =	devel/p5-Devel-CheckLib
TEST_DEPENDS =	devel/p5-Test-Fatal

CONFIGURE_ARGS = --libs=${LOCALBASE}/lib

.include <bsd.port.mk>
