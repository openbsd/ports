# $OpenBSD: Makefile,v 1.30 2020/11/28 12:46:24 sthen Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	SNMP-Info-3.71
CATEGORIES =	net

# BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	net/net-snmp \
		net/p5-NetAddr-IP>=4.068
BUILD_DEPENDS =	net/net-snmp

MAKE_ENV =	TEST_POD=1

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
