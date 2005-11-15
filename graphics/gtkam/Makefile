# $OpenBSD: Makefile,v 1.4 2005/11/15 13:51:07 wilfried Exp $

COMMENT=	"digital camera frontend"

VERSION=	0.1.10
DISTNAME=	gtkam-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	gmodule-2.0.0.0 X11 gobject-2.0.0.0 \
		atk-1.0.0.0 cairo fontconfig freetype intl m c \
		glib-2.0.0.0 pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

BUILD_DEPENDS=	:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=	gphoto2,gphoto2_port::graphics/libgphoto2 \
		gdk_pixbuf-2.0.0.11,gdk-x11-2.0.0.11,gtk-x11-2.0.0.11::x11/gtk+2

MODULES=	converters/libiconv

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-gnome \
		--without-gimp \
		--without-bonobo-activation \
		--without-exif

.include <bsd.port.mk>
