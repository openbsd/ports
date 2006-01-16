# $OpenBSD: Makefile,v 1.2 2006/01/16 01:05:27 brad Exp $

# consertive setting. macppc found to have some issues.
ONLY_FOR_ARCHS=		amd64 i386

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
