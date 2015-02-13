# $OpenBSD: Makefile,v 1.2 2015/02/13 13:43:07 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
DISTNAME =	Net-LDNS-0.70
REVISION =	0
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += idn ldns

LIB_DEPENDS =	devel/libidn \
		net/ldns/libldns
BUILD_DEPENDS =	devel/p5-Devel-CheckLib
TEST_DEPENDS =	devel/p5-Test-Fatal

CONFIGURE_ARGS = --libs=${LOCALBASE}/lib

.include <bsd.port.mk>
