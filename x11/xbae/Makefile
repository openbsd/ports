# $OpenBSD: Makefile,v 1.22 2016/05/05 19:52:29 naddy Exp $

COMMENT=	Motif-based table widget

DISTNAME=	xbae-4.60.4
REVISION=	14

SHARED_LIBS=	Xbae 4.60

CATEGORIES=	x11 math

HOMEPAGE=	http://xbae.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xm Xmu Xpm Xrender Xt expat
WANTLIB += fontconfig freetype jpeg m png pthread-stubs xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xbae/}

MODULES=	converters/libiconv

LIB_DEPENDS+=	x11/motif
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${PREFIX}/share/doc \
		 --enable-production
CONFIGURE_ENV=	LDFLAGS=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

.include <bsd.port.mk>
