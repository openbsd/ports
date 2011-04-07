# $OpenBSD: Makefile,v 1.12 2011/04/07 08:17:29 jasper Exp $

COMMENT =	library for writing single instance application

GNOME_PROJECT =	libunique
GNOME_VERSION =	1.1.6
REVISION=	0

SHARED_LIBS +=  unique-1.0           2.0      # .100.6
CATEGORIES =	devel

HOMEPAGE =	http://live.gnome.org/LibUnique

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo dbus-1
WANTLIB += dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

BUILD_DEPENDS=		devel/gobject-introspection

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--with-x

MODULES =	devel/gettext \
		x11/gnome

LIB_DEPENDS =	x11/gtk+2 \
		x11/dbus-glib

.include <bsd.port.mk>
