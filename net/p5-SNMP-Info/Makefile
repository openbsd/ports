# $OpenBSD: Makefile,v 1.7 2011/04/12 06:36:10 jasper Exp $
COMMENT=	perl5 interface to network devices and MIBs through SNMP

MODULES=	cpan

DISTNAME=	SNMP-Info-2.04
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
USE_GROFF =	Yes

.include <bsd.port.mk>
