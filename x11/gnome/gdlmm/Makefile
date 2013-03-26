# $OpenBSD: Makefile,v 1.8 2013/03/26 16:32:52 ajacoutot Exp $

COMMENT=	C++ binding for gdl

GNOME_PROJECT=	gdlmm
GNOME_VERSION=	3.3.2
REVISION=	3

SHARED_LIBS +=  gdlmm-3.0                 0.0 # 1.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi cairo cairo-gobject cairomm-1.0 dbus-1 expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0
WANTLIB += gdl-3 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz
WANTLIB += icudata icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/gdl \
		x11/gtk3mm

CONFIGURE_ENV=	ac_cv_path_DOT= \
		ac_cv_path_DOXYGEN=

### XXX remove at next release ###
BUILD_DEPENDS+=	devel/m4
CONFIGURE_ENV+=	ac_cv_path_DOXYGEN=doxygen
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
CONFIGURE_ARGS+=	--enable-maintainer-mode

pre-configure:
	ln -s /usr/local/bin/gm4 ${WRKDIR}/bin/m4
##################################

.include <bsd.port.mk>
