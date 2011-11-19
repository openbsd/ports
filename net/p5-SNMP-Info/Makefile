# $OpenBSD: Makefile,v 1.9 2011/11/19 10:03:22 giovanni Exp $

COMMENT=	perl5 interface to network devices and MIBs through SNMP

MODULES=	cpan

DISTNAME=	SNMP-Info-2.06
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/net-snmp,-perl
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
