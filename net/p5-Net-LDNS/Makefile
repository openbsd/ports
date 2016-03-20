# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:53 naddy Exp $

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
DISTNAME =	Net-LDNS-0.75
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto idn perl

LIB_DEPENDS =	devel/libidn
BUILD_DEPENDS =	devel/p5-Devel-CheckLib
TEST_DEPENDS =	devel/p5-Test-Fatal

CONFIGURE_ARGS = --libs=${LOCALBASE}/lib

.include <bsd.port.mk>
