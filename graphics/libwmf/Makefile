# $OpenBSD: Makefile,v 1.8 2004/11/30 01:06:37 espie Exp $

COMMENT=	"WMF handling and conversion library"

DISTNAME=	libwmf-0.2.6
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

HOMEPAGE=	http://www.wvware.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c freetype iconv m z

LIB_DEPENDS=	xml2::textproc/libxml \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=2.54
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-png=${LOCALBASE} --with-freetype=${X11BASE}
CONFIGURE_ARGS+= --with-jpeg=${LOCALBASE} --with-zlib=/usr
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng"

.include <bsd.port.mk>
