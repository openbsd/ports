# $OpenBSD: Makefile,v 1.6 2011/09/28 09:51:36 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		tool for setting pointing devices

DISTNAME =		gpointing-device-settings-1.5.1
CATEGORIES =		x11 sysutils

REVISION =		1

SHARED_LIBS +=  gpds                      0.0 # 1.0

HOMEPAGE =		http://live.gnome.org/GPointingDeviceSettings

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE_JP:=gsynaptics/45812/}

MODULES =		devel/gconf2 \
			devel/gettext \
			x11/gnome

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 drm expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODGNOME_DESKTOP_FILE =		Yes
MODGCONF2_SCHEMAS_DIR =	gpointing-device-settings
TAR =			${LOCALBASE}/bin/gtar

LIB_DEPENDS =		x11/gtk+2
RUN_DEPENDS =		x11/gnome/settings-daemon
BUILD_DEPENDS =		archivers/gtar \
			x11/gnome/settings-daemon

LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
