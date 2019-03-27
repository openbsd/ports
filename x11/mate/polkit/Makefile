# $OpenBSD: Makefile,v 1.2 2019/03/27 18:13:38 robert Exp $

COMMENT=		PolicyKit authentication agent for MATE

MATE_PROJECT=		mate-polkit

CATEGORIES=		x11 sysutils

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16 polkit-agent-1 polkit-gobject-1
WANTLIB += pthread xcb xcb-render xcb-shm z

MODULES=		x11/gnome

LIB_DEPENDS=		sysutils/polkit \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-accountsservice \
			--disable-appindicator

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/mate-polkit

.include <bsd.port.mk>
