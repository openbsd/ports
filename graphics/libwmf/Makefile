# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:02 sthen Exp $

COMMENT=	WMF handling and conversion library

DISTNAME=	libwmf-0.2.8.4
REVISION=	6
SHARED_LIBS=	wmf		8.0	\
		wmf-0.2		8.0	\
		wmflite		7.1	\
		wmflite-0.2	7.1

CATEGORIES=	graphics devel

HOMEPAGE=	http://wvware.sf.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	X11 c expat freetype m xcb z jpeg png Xau Xdmcp

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-png=${LOCALBASE} \
		--with-freetype=${X11BASE} \
		--with-jpeg=${LOCALBASE} \
		--with-zlib=/usr \
		--with-gsfontdir=${LOCALBASE}/share/fonts/ghostscript \
		--disable-gd
CONFIGURE_ENV=	PKG_CONFIG="/usr/bin/false"

.include <bsd.port.mk>
