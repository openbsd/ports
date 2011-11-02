# $OpenBSD: Makefile,v 1.33 2011/11/02 08:46:37 jasper Exp $

COMMENT=	digital camera frontend

DISTNAME=	gtkam-0.1.17
REVISION=	2

CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += exif exif-gtk expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gphoto2 gphoto2_port gthread-2.0 gtk-x11-2.0 ltdl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs usb xcb xcb-render xcb-shm
WANTLIB += z ffi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=	graphics/libgphoto2 \
		x11/gtk+2 \
		graphics/libexif-gtk
RUN_DEPENDS=	devel/desktop-file-utils

MODULES=	devel/gettext \
		textproc/intltool

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

# minimal: don't include any GNOME dependency
CONFIGURE_ARGS +=--with-gnome=no \
		--with-gimp=no \
		--with-bonobo=no \
		--disable-scrollkeeper

.include <bsd.port.mk>
