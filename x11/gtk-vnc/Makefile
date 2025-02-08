COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		1.5.0

SHARED_LIBS += gvnc-1.0                  1.4 # 0.0.1
SHARED_LIBS += gvncpulse-1.0             0.1 # 0.0.1
SHARED_LIBS += gtk-vnc-2.0               1.2 # 0.0.2

CATEGORIES=		x11 net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmp
WANTLIB += gnutls gobject-2.0 gtk-3 intl m pulse pulse-simple
WANTLIB += sasl2 z

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

LIB_DEPENDS=		audio/pulseaudio \
			devel/gmp \
			security/cyrus-sasl2 \
			security/gnutls \
			x11/gtk+3

.include <bsd.port.mk>
