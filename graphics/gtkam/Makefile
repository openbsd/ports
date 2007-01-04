# $OpenBSD: Makefile,v 1.11 2007/01/04 20:19:54 steven Exp $

COMMENT=	"digital camera frontend"

VERSION=	0.1.10
DISTNAME=	gtkam-${VERSION}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	gmodule-2.0 X11 Xext Xrender gobject-2.0 glitz png \
		atk-1.0 fontconfig freetype m c z cairo \
		glib-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=	gphoto2,gphoto2_port::graphics/libgphoto2 \
		gdk_pixbuf-2.0.>=0.11,gdk-x11-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2

MODULES=	devel/gettext      

SEPARATE_BUILD=	concurrent
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-gnome \
		--without-gimp \
		--without-bonobo-activation \
		--without-exif

.include <bsd.port.mk>
