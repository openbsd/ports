# $OpenBSD: Makefile,v 1.7 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=	Motif-based table widget

DISTNAME=	xbae-4.60.4
PKGNAME=	${DISTNAME}p4

SHARED_LIBS=	Xbae 4.60

CATEGORIES=	x11 math

HOMEPAGE=	http://xbae.sourceforge.net/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xmu Xp Xpm Xrender Xt
WANTLIB += expat fontconfig freetype z iconv pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xbae/}

USE_LIBTOOL=	 Yes
USE_X11=	 Yes
USE_MOTIF=	 Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${PREFIX}/share/doc \
		 --enable-production

.include <bsd.port.mk>
