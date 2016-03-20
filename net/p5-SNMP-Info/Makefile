# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:57 naddy Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	SNMP-Info-3.31
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	net/net-snmp

MAKE_ENV =	TEST_POD=1

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
