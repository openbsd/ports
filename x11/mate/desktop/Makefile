# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:24 robert Exp $

COMMENT=		components for the MATE desktop

SHARED_LIBS+=		mate-desktop-2		0.0 # 18.4

MATE_PROJECT=		mate-desktop

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender c dconf epoxy expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pcre pixman-1 pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm z
WANTLIB += harfbuzz gtk-3 atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 gdk-3 gdk_pixbuf-2.0 graphite2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 png
WANTLIB += X11-xcb xcb-util startup-notification-1

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3 \
			devel/startup-notification

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

# https://bugzilla.gnome.org/show_bug.cgi?id=590059
CONFIGURE_ARGS +=	--with-pnp-ids-path=${LOCALBASE}/share/hwdata \
			--disable-gtk-doc

.include <bsd.port.mk>
