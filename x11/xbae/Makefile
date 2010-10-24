# $OpenBSD: Makefile,v 1.12 2010/10/24 21:15:35 ajacoutot Exp $

COMMENT=	Motif-based table widget

DISTNAME=	xbae-4.60.4
REVISION=	6

SHARED_LIBS=	Xbae 4.60

CATEGORIES=	x11 math

HOMEPAGE=	http://xbae.sourceforge.net/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xrender Xt jpeg m png
WANTLIB += expat fontconfig freetype z iconv pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xbae/}

USE_LIBTOOL=	 Yes
USE_MOTIF=	 Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${PREFIX}/share/doc \
		 --enable-production
CONFIGURE_ENV=	LDFLAGS=-lm

.include <bsd.port.mk>
