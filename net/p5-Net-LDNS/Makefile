# $OpenBSD: Makefile,v 1.3 2015/10/01 12:21:32 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
DISTNAME =	Net-LDNS-0.75
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto idn

LIB_DEPENDS =	devel/libidn
BUILD_DEPENDS =	devel/p5-Devel-CheckLib
TEST_DEPENDS =	devel/p5-Test-Fatal

CONFIGURE_ARGS = --libs=${LOCALBASE}/lib

.include <bsd.port.mk>
