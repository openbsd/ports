# $OpenBSD: Makefile,v 1.17 2009/08/10 06:31:45 kili Exp $

COMMENT=	WMF handling and conversion library

DISTNAME=	libwmf-0.2.8.3
PKGNAME=	${DISTNAME}p5
SHARED_LIBS=	wmf		8.0	\
		wmf-0.2		8.0	\
		wmflite		7.1	\
		wmflite-0.2	7.1

CATEGORIES=	graphics devel

HOMEPAGE=	http://wvware.sf.net/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xau Xdmcp c expat freetype m pthread-stubs xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-png=${LOCALBASE} \
		--with-freetype=${X11BASE} \
		--with-jpeg=${LOCALBASE} \
		--with-zlib=/usr \
		--with-gsfontdir=${LOCALBASE}/share/ghostscript/fonts/ \
		--disable-gd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		PKG_CONFIG="/usr/bin/false"

.include <bsd.port.mk>
