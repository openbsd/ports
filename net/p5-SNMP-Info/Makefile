# $OpenBSD: Makefile,v 1.16 2015/03/29 14:52:45 benoit Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan

DISTNAME =	SNMP-Info-3.26
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
