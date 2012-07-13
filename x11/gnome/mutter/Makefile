# $OpenBSD: Makefile,v 1.2 2012/07/13 16:35:26 ajacoutot Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.4.1

SHARED_LIBS +=  mutter                    0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += json-glib-1.0 ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-aux xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			graphics/clutter/core>=1.6.14 \
			devel/gobject-introspection
BUILD_DEPENDS=		${RUN_DEPENDS} \
			x11/gnome/doc-utils
RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.4.2p0 \
			x11/gnome/zenity

DESKTOP_FILES=		Yes

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_ARGS +=	--disable-static

.include <bsd.port.mk>
