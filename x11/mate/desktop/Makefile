# $OpenBSD: Makefile,v 1.17 2020/08/20 06:40:18 robert Exp $

COMMENT=		components for the MATE desktop

SHARED_LIBS+=		mate-desktop-2		0.0 # 18.4

MATE_PROJECT=		mate-desktop
MATE_VERSION=		1.24.1

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject dconf epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread startup-notification-1 xcb xcb-render xcb-shm
WANTLIB += xcb-util z

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		x11/gtk+3 \
			devel/startup-notification

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

CONFIGURE_STYLE=	gnu

# https://bugzilla.gnome.org/show_bug.cgi?id=590059
CONFIGURE_ARGS +=	--with-pnp-ids-path=${LOCALBASE}/share/hwdata \
			--disable-gtk-doc

.include <bsd.port.mk>
