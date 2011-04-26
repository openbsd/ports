# $OpenBSD: Makefile,v 1.142 2011/04/26 18:40:24 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		2.32.1

REVISION=		7

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += z xcb-render execinfo xcb GL Xxf86vm drm xcb-shm

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	textproc/rarian \
		textproc/xmlto \
		x11/gnome/settings-daemon
LIB_DEPENDS=	devel/libexecinfo
RUN_DEPENDS=	x11/gnome/settings-daemon \
		sysutils/consolekit \
		x11/xdg-user-dirs-gtk>=0.8p6

# Install accessibility components -- daemons will start only if
# accessibility is enabled by the user.
# This should really be a dep. of a "gnome-accessibility" metapackage.
RUN_DEPENDS+=	x11/gnome/at-spi2-atk

# polkit-gnome isn't really *required* but then we will loose the polkit
# auth. dialog ; same for gconf2-polkit, gconf2 and polkit are already
# dependencies and we want to be able to handle system-wide gconf entries.
# This should really be a dep. of a "gnome" metapackage.
RUN_DEPENDS+=	x11/polkit-gnome
RUN_DEPENDS+=	devel/gconf2,-polkit

DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-session

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-rebuilds
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"
USE_GROFF =	Yes

# XXX gconf2 MODULE changes this value but gsm-gconf.c uses this to
# find the right path for gconftool-2
CONFIGURE_ENV+=		GCONFTOOL=${LOCALBASE}/bin/gconftool-2

MAKE_FLAGS=		XSLTPROC="${LOCALBASE}/bin/xsltproc -nonet"

.include <bsd.port.mk>
