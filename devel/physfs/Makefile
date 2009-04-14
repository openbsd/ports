# $OpenBSD: Makefile,v 1.9 2009/04/14 15:17:57 jolan Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-1.0.2

SHARED_LIBS=	physfs-1.0 	1.1 \
		physfs		1.1

CATEGORIES=	devel
MASTER_SITES=	http://offload1.icculus.org/physfs/downloads/

HOMEPAGE=	http://icculus.org/physfs/

# ZLib
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c curses pthread readline z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
