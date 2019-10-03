# $OpenBSD: Makefile,v 1.16 2019/10/03 14:36:42 robert Exp $

COMMENT=		MATE notification daemon

MATE_PROJECT=		mate-notification-daemon
MATE_VERSION=		1.22.1

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 XRes Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += ltdl m notify ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread vorbis vorbisfile wnck-3 xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libnotify \
			devel/libwnck3

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
