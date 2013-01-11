# $OpenBSD: Makefile,v 1.6 2013/01/11 13:44:25 ajacoutot Exp $

COMMENT=	C++ binding for gdl

GNOME_PROJECT=	gdlmm
GNOME_VERSION=	3.3.2
REVISION=	2

SHARED_LIBS +=  gdlmm-3.0                 0.0 # 1.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += cairo cairo-gobject cairomm-1.0 drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gdl-3 gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc pthread

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/gdl \
		x11/gtk3mm

CONFIGURE_ENV=	ac_cv_path_DOT= \
		ac_cv_path_DOXYGEN=

### XXX remove at next release ###
BUILD_DEPENDS+=	devel/m4
CONFIGURE_ENV+=	ac_cv_path_DOXYGEN=doxygen
CONFIGURE_ARGS=	--enable-maintainer-mode

pre-configure:
	ln -s /usr/local/bin/gm4 ${WRKDIR}/bin/m4
##################################

.include <bsd.port.mk>
