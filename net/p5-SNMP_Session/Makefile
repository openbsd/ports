# $OpenBSD: Makefile,v 1.1.1.1 2002/05/11 21:19:26 danh Exp $

COMMENT=	"provides rudimentary access to remote SNMP agents"

VERSION=	0.92
DISTNAME=	SNMP_Session-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
NEED_VERSION=	1.522
MASTER_SITES=	ftp://ftp.switch.ch/software/sources/network/snmp/perl/

HOMEPAGE=	http://www.switch.ch/misc/leinen/snmp/perl/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl
NO_REGRESS=	Yes

.include <bsd.port.mk>	
