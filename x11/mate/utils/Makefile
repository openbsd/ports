# $OpenBSD: Makefile,v 1.12 2019/03/27 18:13:39 robert Exp $

COMMENT=		MATE support utilities

SHARED_LIBS +=  matedict                  6.7 # 6.7

MATE_PROJECT=		mate-utils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c epoxy expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl kvm m pcre pixman-1
WANTLIB += png16 pthread xcb xcb-render xcb-shm z
WANTLIB += atk-1.0 atk-bridge-2.0 cairo-gobject cairo
WANTLIB += canberra-gtk3 canberra gdk-3 graphite2 gtk-3
WANTLIB += gtop-2.0 harfbuzz ltdl mate-panel-applet-4 ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 vorbis vorbisfile
WANTLIB += fribidi

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libgtop2 \
			x11/mate/panel

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
