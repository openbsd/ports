# $OpenBSD: Makefile,v 1.5 2007/11/20 21:24:28 okan Exp $

# consertive setting. macppc found to have some issues.
ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-5.37	
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}	
HOMEPAGE=		http://smartmontools.sourceforge.net/ 

MAINTAINER=		Romain GAILLEGUE <romain@biscotte.net>	

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
