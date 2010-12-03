# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:43 ajacoutot Exp $
COMMENT=	perl5 interface to network devices and MIBs through SNMP

MODULES=	cpan

DISTNAME=	SNMP-Info-1.04
REVISION=	1
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SNMP/}

RUN_DEPENDS=	net/net-snmp,-perl

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

.include <bsd.port.mk>
