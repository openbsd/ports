# $OpenBSD: Makefile,v 1.4 2002/05/13 23:31:24 espie Exp $

COMMENT=	"WMF handling and conversion library"

DISTNAME=	libwmf-0.2.0
CATEGORIES=	graphics devel
NEED_VERSION=	1.522
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}

HOMEPAGE=	http://www.wvware.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xml2::textproc/libxml \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	LIBS="-lm"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-png=${LOCALBASE} --with-freetype=${X11BASE}
CONFIGURE_ARGS+= --with-jpeg=${LOCALBASE} --with-zlib=/usr

.include <bsd.port.mk>
