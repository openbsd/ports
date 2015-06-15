# $OpenBSD: Makefile,v 1.17 2015/06/15 08:02:14 benoit Exp $

COMMENT =	perl5 interface to network devices and MIBs through SNMP

MODULES =	cpan

DISTNAME =	SNMP-Info-3.27
CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
