# $OpenBSD: Makefile,v 1.19 2011/07/19 09:34:19 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		3.0.2

REVISION=		10

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject croco-0.6 dbus-1 dbus-glib-1
WANTLIB += drm execinfo expat fontconfig freetype gconf-2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 upower-glib
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	textproc/xmlto \
		x11/gnome/settings-daemon \
		STEM-*-!gtk2:devel/gconf2,-gtk
LIB_DEPENDS=	devel/libexecinfo \
		x11/gtk+3 \
		devel/gconf2 \
		x11/gnome/librsvg \
		sysutils/upower
RUN_DEPENDS=	x11/gnome/settings-daemon \
		sysutils/consolekit \
		x11/xdg-user-dirs-gtk>=0.8p6 \
		STEM-*-!gtk2:devel/gconf2,-gtk

# gnome.session+gnome-fallback.session RequiredComponents.
RUN_DEPENDS+=	notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon

# gnome.session RequiredComponents.
#RUN_DEPENDS+=	x11/gnome/shell

# gnome-fallback.session RequiredComponents.
# polkit-gnome isn't strictly *required* but then we will loose the
# polkit authentication dialog in the gnome-fallback session.
RUN_DEPENDS+=	STEM-*-!gtk2:x11/gnome/metacity \
		x11/gnome/panel>=3 \
		x11/polkit-gnome

# Defaults from gsettings-desktop-schema.
RUN_DEPENDS+=	fonts/cantarell-fonts \
		x11/gnome/backgrounds>=3 \
		x11/gnome/themes-standard

# Install accessibility components -- daemons will start only if
# accessibility is enabled by the user.
# This should really be a dep. of a "gnome-accessibility" metapackage.
RUN_DEPENDS+=	x11/gnome/at-spi2-atk

# gconf2 and polkit are already dependencies and we want to be able to
# handle system-wide gconf entries. This should really be a dep. of a
# "gnome" metapackage.
RUN_DEPENDS+=	devel/gconf2,-polkit

DESKTOP_FILES=		Yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-rebuilds \
		--enable-docbook-docs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
