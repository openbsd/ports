# $OpenBSD: Makefile,v 1.1.1.1 2001/08/11 00:51:31 avsm Exp $

COMMENT=	"convert various Microsoft formats into HTML/PNG"

DISTNAME=	wv-0.6.5
CATEGORIES=	converters
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= wvware

HOMEPAGE=	http://www.wvware.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	wmf.0::graphics/libwmf \
		png.2::graphics/png \
		iconv.2::converters/libiconv \
		Magick.5::graphics/ImageMagick \
		glib.1::devel/glib

USE_GMAKE= Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-png=${LOCALBASE} --with-exporter \
		--with-libiconv=${LOCALBASE} \
		--with-Magick=${LOCALBASE} --with-libwmf=${LOCALBASE}

.include <bsd.port.mk>
