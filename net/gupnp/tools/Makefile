# $OpenBSD: Makefile,v 1.8 2011/12/12 10:00:01 jasper Exp $

COMMENT=		free replacements of Intel UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.8.4

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm e2fs-uuid expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 gtk-3 gupnp-1.0 gupnp-av-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 xcb xcb-render xcb-shm
WANTLIB += xml2 z stdc++ ffi

LIB_DEPENDS=		net/gupnp/av \
			sysutils/e2fsprogs>=1.41.4p5 \
			x11/gtk+3
BUILD_DEPENDS=		x11/gnome/icon-theme
RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gnome/icon-theme

.include <bsd.port.mk>
