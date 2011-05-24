# $OpenBSD: Makefile,v 1.155 2011/05/24 07:57:15 jasper Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		2.32.1

REVISION=		15

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm execinfo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs upower-glib xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	textproc/xmlto \
		x11/gnome/settings-daemon \
		STEM-*-gtk2:devel/gconf2,gtk2,-gtk
LIB_DEPENDS=	devel/libexecinfo \
		x11/gtk+2 \
		sysutils/upower
RUN_DEPENDS=	x11/gnome/settings-daemon \
		sysutils/consolekit \
		x11/xdg-user-dirs-gtk>=0.8p6 \
		STEM-*-gtk2:devel/gconf2,gtk2,-gtk

# Install accessibility components -- daemons will start only if
# accessibility is enabled by the user.
# This should really be a dep. of a "gnome-accessibility" metapackage.
RUN_DEPENDS+=	x11/gnome/at-spi2-atk

# polkit-gnome isn't really *required* but then we will loose the polkit
# auth. dialog ; same for gconf2-polkit, gconf2 and polkit are already
# dependencies and we want to be able to handle system-wide gconf entries.
# This should really be a dep. of a "gnome" metapackage.
RUN_DEPENDS+=	x11/polkit-gnome,gtk2
RUN_DEPENDS+=	devel/gconf2,-polkit

DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-session

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-rebuilds \
		--with-gtk=2.0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

# XXX gconf2 MODULE changes this value but gsm-gconf.c uses this to
# find the right path for gconftool-2
CONFIGURE_ENV+=		GCONFTOOL=${LOCALBASE}/bin/gconftool-2

.include <bsd.port.mk>
