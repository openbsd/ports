# $OpenBSD: Makefile,v 1.13 2014/12/05 07:06:13 benoit Exp $

COMMENT=	perl5 interface to network devices and MIBs through SNMP

MODULES=	cpan

DISTNAME =	SNMP-Info-3.22
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/net-snmp,-perl
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
