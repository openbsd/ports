COMMENT=	"perl5 interface to network devices and MIBs through SNMP"

MODULES=	cpan

DISTNAME=	SNMP-Info-1.04
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SNMP/}

RUN_DEPENDS=	::net/net-snmp,-perl

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
