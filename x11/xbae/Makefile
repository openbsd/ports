# $OpenBSD: Makefile,v 1.1.1.1 2007/03/31 11:49:24 martynas Exp $

COMMENT=		A Motif-based widget which displays a grid of cells as a spreadsheet

DISTNAME=		xbae-4.60.4

SHARED_LIBS=		Xbae 4.60

CATEGORIES=		x11 math

HOMEPAGE=		http://xbae.sourceforge.net/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xp Xpm Xt

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xbae/}

USE_LIBTOOL=	 Yes
USE_X11=	 Yes
USE_MOTIF=	 Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${LOCALBASE}/share/doc \
		 --enable-production

.include <bsd.port.mk>
