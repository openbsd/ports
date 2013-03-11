# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:54 espie Exp $

COMMENT=	perl5 interface to network devices and MIBs through SNMP

MODULES=	cpan

DISTNAME=	SNMP-Info-2.06
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/net-snmp,-perl
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
