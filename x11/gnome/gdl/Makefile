# $OpenBSD: Makefile,v 1.39 2013/03/30 07:14:37 ajacoutot Exp $

COMMENT=		GNOME Docking Library

GNOME_PROJECT=		gdl
GNOME_VERSION=		3.8.0

SHARED_LIBS +=  gdl-3                3.1      # 5.6

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz icudata icule
WANTLIB += icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+3

MODGNOME_TOOLS= goi

.include <bsd.port.mk>
