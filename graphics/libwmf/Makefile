# $OpenBSD: Makefile,v 1.24 2013/06/04 18:41:49 naddy Exp $

COMMENT=	WMF handling and conversion library

DISTNAME=	libwmf-0.2.8.4
REVISION=	0
SHARED_LIBS=	wmf		8.0	\
		wmf-0.2		8.0	\
		wmflite		7.1	\
		wmflite-0.2	7.1

CATEGORIES=	graphics devel

HOMEPAGE=	http://wvware.sf.net/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB +=	X11 c expat freetype m xcb z jpeg png

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-png=${LOCALBASE} \
		--with-freetype=${X11BASE} \
		--with-jpeg=${LOCALBASE} \
		--with-zlib=/usr \
		--with-gsfontdir=${LOCALBASE}/share/ghostscript/fonts/ \
		--disable-gd
CONFIGURE_ENV=	PKG_CONFIG="/usr/bin/false"

.include <bsd.port.mk>
