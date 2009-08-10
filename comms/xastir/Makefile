# $OpenBSD: Makefile,v 1.12 2009/08/10 06:30:31 kili Exp $

COMMENT=	X amateur station tracking and info reporting

DISTNAME=	xastir-1.8.2
PKGNAME=	${DISTNAME}p7
CATEGORIES=    	comms hamradio geo

HOMEPAGE=	http://www.xastir.org/

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	$(MASTER_SITE_SOURCEFORGE:=xastir/)

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9
USE_MOTIF=		openmotif
USE_X11=		Yes

CONFIGURE_ARGS=		--with-shapelib					\
			--with-pcre					\
			--with-libproj					\
			--with-geotiff					\
			--with-dbfawk					\
			--with-rtree					\
			--with-map-cache				\
			--with-imagemagick				\
			--with-x					\
			--without-ax25					\
			--without-gpsman				\
			--without-festival				\
			--without-gdal					\
			--with-bdb-libdir=$(LOCALBASE)/lib/db4		\
			--with-bdb-incdir=$(LOCALBASE)/include/db4

WANTLIB=	ICE SM c pthread freetype Xt Xpm Xext m Xp X11 z	\
		proj pthread-stubs tiff xcb iconv

LIB_DEPENDS=	curl::net/curl						\
		shp::devel/shapelib					\
		geotiff::devel/geotiff					\
		MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick	\
		lib/db4/db.>=4:db->=4,<5:databases/db/v4		\
		intl::devel/gettext					\
		pcre::devel/pcre

.include <bsd.port.mk>
