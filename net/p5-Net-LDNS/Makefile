# $OpenBSD: Makefile,v 1.1.1.1 2015/01/02 14:33:44 florian Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface the DNS resolver using the ldns library

MODULES =	cpan
DISTNAME =	Net-LDNS-0.70
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += idn ldns

LIB_DEPENDS =	devel/libidn \
		net/ldns/libldns
BUILD_DEPENDS =	devel/p5-Devel-CheckLib
TEST_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
