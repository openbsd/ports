# $OpenBSD: Makefile,v 1.15 2011/04/28 13:10:57 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	sytem configuration GUI for desktops

GNOME_PROJECT=	gnome-system-tools
GNOME_VERSION=	2.32.0

REVISION=	8

CATEGORIES=	sysutils

HOMEPAGE=	http://projects.gnome.org/gst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += crypto dbus-1 dbus-glib-1 drm expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m nautilus-extension
WANTLIB += oobs-1 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png polkit-gobject-1 polkit-gtk-1 pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	devel/liboobs \
		x11/polkit-gnome \
		x11/gnome/nautilus

DESKTOP_FILES=	Yes

MODGNOME_HELP_FILES= Yes
MODGCONF2_SCHEMAS_DIR= gnome-system-tools

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-rules
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-system-tools

.include <bsd.port.mk>
