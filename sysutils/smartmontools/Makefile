# $OpenBSD: Makefile,v 1.4 2007/11/09 13:35:37 pyr Exp $

# consertive setting. macppc found to have some issues.
ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-5.37	
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
WANTLIB=                c m stdc++ util

.include <bsd.port.mk>
