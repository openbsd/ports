# $OpenBSD: Makefile,v 1.208 2012/03/29 07:23:21 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		3.4.0

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject dbus-1 dbus-glib-1 drm
WANTLIB += execinfo expat ffi fontconfig freetype gconf-2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += upower-glib xcb xcb-render xcb-shm z stdc++

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	textproc/xmlto \
		x11/gnome/settings-daemon
LIB_DEPENDS=	devel/libexecinfo \
		x11/gtk+3 \
		devel/gconf2 \
		sysutils/upower \
		devel/json-glib
RUN_DEPENDS=	x11/gnome/settings-daemon \
		sysutils/consolekit

# only needed at runtime since the move from gconf to gsettings
# (see NEWS in the source tarball)
RUN_DEPENDS+=	devel/gsettings-desktop-schemas

# gnome.session+gnome-fallback.session RequiredComponents.
RUN_DEPENDS+=	sysutils/notification-daemon

# gnome.session RequiredComponents.
#RUN_DEPENDS+=	x11/gnome/shell

# gnome-fallback.session RequiredComponents.
# polkit-gnome isn't strictly *required* but then we will loose the
# polkit authentication dialog in the gnome-fallback session.
RUN_DEPENDS+=	x11/gnome/metacity \
		x11/gnome/panel>=3 \
		x11/polkit-gnome

# Defaults from gsettings-desktop-schema.
RUN_DEPENDS+=	fonts/cantarell-fonts \
		x11/gnome/backgrounds>=3 \
		x11/gnome/themes-standard

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

MODGNOME_CPPFLAGS=-I${X11BASE}/include
MODGNOME_LDFLAGS=-L${X11BASE}/lib

CONFIGURE_ARGS=	--disable-systemd \
		--enable-docbook-docs

.include <bsd.port.mk>
