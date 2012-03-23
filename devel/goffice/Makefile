# $OpenBSD: Makefile,v 1.44 2012/03/23 09:44:44 ajacoutot Exp $

# XXX on goffice version change,
# update API_VERSION in math/gnumeric, bump PKGNAME then change the
# goffice dependency spec according to the new version.

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.8.17
REVISION =	2

SHARED_LIBS +=	goffice-0.8          0.0      # .8.0

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 cairo
WANTLIB += dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xcb-render xcb-shm xml2
WANTLIB += z

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libgsf \
			devel/gconf2 \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

# XXX move to gsettings
CONFIGURE_ARGS +=	--with-config-backend=gconf

SUBST_VARS=		GNOME_VERSION

.include <bsd.port.mk>
