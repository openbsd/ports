# $OpenBSD: Makefile,v 1.13 2006/08/12 15:58:43 bernd Exp $

COMMENT=	"WMF handling and conversion library"

DISTNAME=	libwmf-0.2.8.3
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	wmf		8.0	\
		wmf-0.2		8.0	\
		wmflite		7.1	\
		wmflite-0.2	7.1

CATEGORIES=	graphics devel

HOMEPAGE=	http://wvware.sf.net/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c freetype m z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

MODULES=	converters/libiconv
LIB_DEPENDS=	xml2::textproc/libxml \
		jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.54
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-png=${LOCALBASE} \
		--with-freetype=${X11BASE} \
		--with-jpeg=${LOCALBASE} \
		--with-zlib=/usr \
		--without-expat \
		--with-gsfontdir=${LOCALBASE}/share/ghostscript/fonts/ \
		--disable-gd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		PKG_CONFIG="/usr/bin/false"

USE_X11=	Yes
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
