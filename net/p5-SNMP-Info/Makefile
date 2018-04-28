# $OpenBSD: Makefile,v 1.25 2018/04/28 14:53:46 ajacoutot Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	SNMP-Info-3.53
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	net/net-snmp

MAKE_ENV =	TEST_POD=1

CONFIGURE_STYLE=modbuild

TEST_DEPENDS =	devel/p5-File-Slurper \
		devel/p5-Path-Class \
		devel/p5-Test-Distribution \
		devel/p5-Test-MockObject

.include <bsd.port.mk>
