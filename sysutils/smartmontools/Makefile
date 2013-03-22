# $OpenBSD: Makefile,v 1.23 2013/03/22 17:55:42 giovanni Exp $

ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-6.1
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}
HOMEPAGE=		http://smartmontools.sourceforge.net/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

USE_GMAKE=      	Yes
USE_GROFF =		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=       	gnu
CONFIGURE_ARGS=	--with-docdir=${PREFIX}/share/doc/smartmontools \
			--with-exampledir=${PREFIX}/share/examples/smartmontools \
			--with-libcap-ng=no \
			--disable-drivedb

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++ util

.include <bsd.port.mk>
