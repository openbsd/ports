# $OpenBSD: Makefile,v 1.7 2009/05/17 09:09:23 sthen Exp $

# conservative setting. macppc found to have some issues.
ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-5.38
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}	
HOMEPAGE=		http://smartmontools.sourceforge.net/ 

MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>	

USE_GMAKE=      	Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=       	gnu 
CONFIGURE_ARGS=		--with-docdir=${PREFIX}/share/doc/smartmontools

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=                c m stdc++ util

.include <bsd.port.mk>
