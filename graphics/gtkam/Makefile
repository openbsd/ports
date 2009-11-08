# $OpenBSD: Makefile,v 1.19 2009/11/08 17:37:33 ajacoutot Exp $

COMMENT=	digital camera frontend

DISTNAME=	gtkam-0.1.16.1
CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	gmodule-2.0 X11 Xext Xrender gobject-2.0 glitz png \
		atk-1.0 fontconfig freetype m c z cairo glib-2.0 pcre \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 Xau Xcursor \
		Xdmcp Xfixes Xi Xinerama Xrandr exif expat ltdl usb \
		Xcomposite Xdamage pixman-1 pthread gio-2.0 \
		pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=	gphoto2,gphoto2_port::graphics/libgphoto2 \
		gdk_pixbuf-2.0.>=0.11,gdk-x11-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2 \
		exif-gtk::graphics/libexif-gtk
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	devel/gettext

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gnome=no \
		--with-gimp=no \
		--with-bonobo=no \
		--disable-scrollkeeper

.include <bsd.port.mk>
