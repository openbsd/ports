# $OpenBSD: Makefile,v 1.9 2010/03/22 10:39:57 giovanni Exp $

# conservative setting. macppc found to have some issues.
ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-5.39.1
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}	
HOMEPAGE=		http://smartmontools.sourceforge.net/ 

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>	

USE_GMAKE=      	Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=       	gnu 
CONFIGURE_ARGS=		--with-docdir=${PREFIX}/share/doc/smartmontools

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=                c m stdc++ util

.include <bsd.port.mk>
