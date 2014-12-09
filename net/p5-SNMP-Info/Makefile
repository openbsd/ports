# $OpenBSD: Makefile,v 1.14 2014/12/09 15:21:13 sthen Exp $

COMMENT=	perl5 interface to network devices and MIBs through SNMP

MODULES=	cpan

DISTNAME =	SNMP-Info-3.22
REVISION=	0
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/net-snmp
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
