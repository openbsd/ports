# $OpenBSD: Makefile,v 1.24 2013/03/11 11:46:11 espie Exp $

COMMENT=		GNOME power manager

GNOME_PROJECT=		gnome-power-manager
GNOME_VERSION=		3.6.0

HOMEPAGE=		http://projects.gnome.org/gnome-power-manager/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += upower-glib xcb xcb-render xcb-shm z stdc++
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule
WANTLIB += icuuc

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIB_DEPENDS=	sysutils/upower \
		x11/gtk+3

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ENV=	ac_cv_path_DOCBOOK2MAN=no \
		ac_cv_path_XMLTO=no

# Remove a few compiler options GCC 4.2.1 doesn't understand.
pre-configure:
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
