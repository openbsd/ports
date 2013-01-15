# $OpenBSD: Makefile,v 1.10 2013/01/15 09:52:14 jasper Exp $

BROKEN-sparc64=		cast increases required alignment of target type
BROKEN-hppa=		cast increases required alignment of target type
BROKEN-sgi=		cast increases required alignment of target type

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.6.2

SHARED_LIBS +=  mutter                    0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 clutter-1.0 cogl cogl-pango
WANTLIB += dbus-1 drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc json-glib-1.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-aux xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			graphics/clutter/core>=1.12.0 \
			devel/gobject-introspection
BUILD_DEPENDS=		${RUN_DEPENDS} \
			x11/gnome/doc-utils
RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.4.2p0 \
			x11/gnome/zenity

DESKTOP_FILES=		Yes

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_ARGS +=	--disable-static

.include <bsd.port.mk>
