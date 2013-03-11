# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:11 espie Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.6.3

SHARED_LIBS +=  mutter                    0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += clutter-1.0 cogl cogl-pango dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz icudata icule icuuc json-glib-1.0 ltdl m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 vorbis
WANTLIB += vorbisfile xcb xcb-aux xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			graphics/clutter/core>=1.12.0 \
			devel/gobject-introspection
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.4.2p0 \
			x11/gnome/zenity

DESKTOP_FILES=		Yes

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_ARGS +=	--disable-static
# disable -Werror which breaks at least hppa/mips64/sparc64
CONFIGURE_ARGS +=	--enable-compile-warnings=yes

.include <bsd.port.mk>
