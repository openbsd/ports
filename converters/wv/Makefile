# $OpenBSD: Makefile,v 1.4 2002/05/13 18:50:38 espie Exp $

COMMENT=	"convert various Microsoft formats into HTML/PNG"

DISTNAME=	wv-0.6.5
CATEGORIES=	converters
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

HOMEPAGE=	http://www.wvware.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	iconv
LIB_DEPENDS=	wmf.0::graphics/libwmf \
		png.2::graphics/png \
		Magick.5::graphics/ImageMagick \
		glib.1::devel/glib

USE_GMAKE= Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-png=${LOCALBASE} --with-exporter \
		--with-libiconv=${LOCALBASE} \
		--with-Magick=${LOCALBASE} --with-libwmf=${LOCALBASE}

NO_REGRESS=	Yes

.include <bsd.port.mk>
