# $OpenBSD: Makefile,v 1.16 2014/04/01 18:38:54 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		tool for setting pointing devices

DISTNAME =		gpointing-device-settings-1.5.1
CATEGORIES =		x11 sysutils
REVISION =		8

SHARED_LIBS +=  gpds                      0.0 # 1.0

HOMEPAGE =		http://live.gnome.org/GPointingDeviceSettings

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE_JP:=gsynaptics/45812/}

MODULES =		devel/gconf2 \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils

MODGCONF2_SCHEMAS_DIR =	gpointing-device-settings

LIB_DEPENDS =		x11/gtk+2
RUN_DEPENDS =		x11/gnome/settings-daemon
BUILD_DEPENDS =		x11/gnome/settings-daemon

CONFIGURE_STYLE =	gnu

post-install:
	rm ${PREFIX}/lib/gnome-settings-daemon-2.0/*.a
	rm ${PREFIX}/lib/gpointing-device-settings/module/*.a

.include <bsd.port.mk>
