COMMENT=		the MATE window manager

SHARED_LIBS +=  marco-private             1.0 # 1.0

MATE_PROJECT=		marco
MATE_VERSION=		1.28.1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=	Yes


WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xpresent
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 dbus-1 epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtop-2.0 harfbuzz iconv intl jpeg
WANTLIB += kvm ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png startup-notification-1 vorbis
WANTLIB += vorbisfile xcb xcb-render xcb-shm xcb-util z

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libgtop2 \
			devel/startup-notification

BUILD_DEPENDS=		x11/gnome/zenity

RUN_DEPENDS=		x11/gnome/zenity

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_TOOLS=		yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
