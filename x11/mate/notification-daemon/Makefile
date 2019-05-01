# $OpenBSD: Makefile,v 1.13 2019/05/01 10:07:53 ajacoutot Exp $

COMMENT=		MATE notification daemon

MATE_PROJECT=		mate-notification-daemon
REVISION=		0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 XRes Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl ltdl m notify ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png16 pthread
WANTLIB += vorbis vorbisfile wnck-3 xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libnotify \
			devel/libwnck3

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
