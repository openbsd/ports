# $OpenBSD: Makefile,v 1.1.1.1 2005/03/08 01:47:26 kurt Exp $

# consertive setting. macppc found to have some issues.
ONLY_FOR_ARCHS=		i386

COMMENT=		"control and monitor storage systems using SMART"

DISTNAME=		smartmontools-5.33	
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}	
HOMEPAGE=		http://smartmontools.sourceforge.net/ 

MAINTAINER=		Romain GAILLEGUE <romain@biscotte.net>	

USE_GMAKE=      	Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=       	gnu 

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=                c util

.include <bsd.port.mk>
