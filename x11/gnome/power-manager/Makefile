# $OpenBSD: Makefile,v 1.30 2013/09/26 16:32:05 ajacoutot Exp $

# XXX find a way to catch button press events
# (and check gsd and gcc power support)

COMMENT=		GNOME power manager

GNOME_PROJECT=		gnome-power-manager
GNOME_VERSION=		3.10.0

HOMEPAGE=		http://projects.gnome.org/gnome-power-manager/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs upower-glib xcb
WANTLIB += xcb-render xcb-shm z

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
