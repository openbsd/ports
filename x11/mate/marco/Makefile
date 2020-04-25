# $OpenBSD: Makefile,v 1.19 2020/04/25 10:49:43 robert Exp $

COMMENT=		the MATE window manager
REVISION=		1

SHARED_LIBS +=  marco-private             1.0 # 1.0

MATE_PROJECT=		marco

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl ltdl m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xcb-util z

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification

BUILD_DEPENDS=		x11/gnome/zenity
RUN_DEPENDS=		x11/gnome/zenity

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
