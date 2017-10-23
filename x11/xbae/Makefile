# $OpenBSD: Makefile,v 1.25 2017/10/23 17:11:06 sthen Exp $

COMMENT=	Motif-based table widget

DISTNAME=	xbae-4.60.4
REVISION=	17

SHARED_LIBS=	Xbae 4.60

CATEGORIES=	x11 math

HOMEPAGE=	http://xbae.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xm Xmu Xpm Xrender Xt expat fontconfig
WANTLIB += freetype iconv jpeg m png xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xbae/}

LIB_DEPENDS+=	converters/libiconv \
		x11/motif
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${PREFIX}/share/doc \
		 --enable-production
CONFIGURE_ENV=	LDFLAGS=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

.include <bsd.port.mk>
