# $OpenBSD: Makefile,v 1.20 2015/11/19 18:19:30 ajacoutot Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan

DISTNAME =	SNMP-Info-3.30
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	net/net-snmp

MAKE_ENV =	TEST_POD=1

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
