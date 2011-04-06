# $OpenBSD: Makefile,v 1.30 2011/04/06 13:56:52 ajacoutot Exp $

COMMENT=	digital camera frontend

DISTNAME=	gtkam-0.1.17

CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm exif exif-gtk expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gphoto2 gphoto2_port gthread-2.0 gtk-x11-2.0 ltdl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs usb xcb xcb-render xcb-shm
WANTLIB += z

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

FAKE_FLAGS=	itlocaledir=${PREFIX}/share/locale

.include <bsd.port.mk>
