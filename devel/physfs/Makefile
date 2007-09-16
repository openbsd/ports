# $OpenBSD: Makefile,v 1.8 2007/09/16 02:53:11 merdely Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-1.0.1
SHARED_LIBS=	physfs-1.0 	1.0 \
		physfs		1.0

CATEGORIES=	devel
MASTER_SITES=	http://offload1.icculus.org/physfs/downloads/

HOMEPAGE=	http://icculus.org/physfs/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# ZLib
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c curses pthread readline z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
