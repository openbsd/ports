# $OpenBSD: Makefile,v 1.12 2010/11/23 18:21:45 giovanni Exp $

ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-5.40
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}	
HOMEPAGE=		http://smartmontools.sourceforge.net/ 

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>	

USE_GMAKE=      	Yes
USE_GROFF =		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=       	gnu 
CONFIGURE_ARGS=		--with-docdir=${PREFIX}/share/doc/smartmontools \
			--with-libcap-ng=no \
			--disable-drivedb

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ util

.include <bsd.port.mk>
