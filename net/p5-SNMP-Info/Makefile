# $OpenBSD: Makefile,v 1.19 2015/10/30 22:30:44 benoit Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan

DISTNAME =	SNMP-Info-3.29
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
