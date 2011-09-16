# $OpenBSD: Makefile,v 1.16 2011/09/16 12:29:17 espie Exp $

COMMENT=	Motif-based table widget

DISTNAME=	xbae-4.60.4
REVISION=	10

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
WANTLIB += expat fontconfig freetype z pthread-stubs xcb Xm

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xbae/}

MODULES=	converters/libiconv

USE_LIBTOOL=	Yes
LIB_DEPENDS+=	x11/openmotif
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${PREFIX}/share/doc \
		 --enable-production
CONFIGURE_ENV=	LDFLAGS=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

.include <bsd.port.mk>
