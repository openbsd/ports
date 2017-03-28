# $OpenBSD: Makefile,v 1.24 2017/03/28 07:44:04 benoit Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	SNMP-Info-3.34
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	net/net-snmp

MAKE_ENV =	TEST_POD=1

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
