# $OpenBSD: Makefile,v 1.29 2013/03/11 11:41:31 espie Exp $

COMMENT=		send small notifications to your desktop

GNOME_VERSION=		0.7.6
GNOME_PROJECT=		notification-daemon
REVISION=		0

CATEGORIES=		sysutils net

HOMEPAGE=		http://www.galago-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 drm expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 ltdl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs vorbis vorbisfile xcb xcb-render xcb-shm
WANTLIB += z ffi stdc++

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libtool,-ltdl \
			audio/libcanberra,-gtk3
RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-dbus-sys="${SYSCONFDIR}/dbus-1/system.d"

.include <bsd.port.mk>
