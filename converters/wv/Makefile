# $OpenBSD: Makefile,v 1.11 2007/05/30 02:39:15 aanriot Exp $

COMMENT=	"convert various Microsoft formats into HTML/PNG"

DISTNAME=	wv-0.7.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

HOMEPAGE=	http://www.wvware.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c freetype jpeg m xml2 z

MODULES=	converters/libiconv
LIB_DEPENDS=	wmf.>=6,wmflite.>=6::graphics/libwmf \
		png.>=2::graphics/png \
		glib.>=1::devel/glib
RUN_DEPENDS=	::graphics/ImageMagick

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV+=	 CPPFLAGS="-I${LOCALBASE}/include/libpng/"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-png=${LOCALBASE} --with-exporter \
		--with-libiconv=${LOCALBASE} \
		--with-Magick=${LOCALBASE} --with-libwmf=${LOCALBASE}

NO_REGRESS=	Yes

.include <bsd.port.mk>
