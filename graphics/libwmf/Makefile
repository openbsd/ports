# $OpenBSD: Makefile,v 1.5 2002/09/08 11:55:35 avsm Exp $

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

LIB_DEPENDS=	xml2::textproc/libxml \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-png=${LOCALBASE} --with-freetype=${X11BASE}
CONFIGURE_ARGS+= --with-jpeg=${LOCALBASE} --with-zlib=/usr

.include <bsd.port.mk>
