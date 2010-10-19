# $OpenBSD: Makefile,v 1.73 2010/10/19 08:13:57 espie Exp $

COMMENT=		GNOME shell and file manager

# PLIST regen is needed for at least the following ports when
# the nautilus extensions directory changes:
# (i.e. ${LOCALBASE}/lib/nautilus/extensions-2.0)
# graphics/evince
# x11/gnome/file-roller
# x11/gnome/nautilus-open-terminal
# x11/gnome/nautilus-sendto
# x11/gnome/seahorse-plugins
# x11/gnome/system-tools
# x11/gnome/totem
# x11/gnome/tracker

GNOME_PROJECT=		nautilus
GNOME_VERSION=		2.32.0

REVISION=		1

SHARED_LIBS +=	nautilus-extension   2.0      # .2.0

CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/projects/nautilus/

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 exif
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-atom xcb-aux xcb-event xml2 z gnome-desktop-2 unique-1.0
WANTLIB += xcb-render xcb-render-util

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			:gnome-icon-theme-*:x11/gnome/icon-theme \
			:gvfs->=1.0.3:x11/gnome/gvfs
LIB_DEPENDS=		::graphics/libexif \
			::x11/gnome/desktop \
			::devel/libunique

DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	nautilus

AUTOCONF_VERSION=	2.63
CONFIGURE_STYLE=	autoconf gnu
USE_GROFF =	Yes

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-introspection \
			--disable-update-mimedb \
			--disable-packagekit
# XXX build error when textproc/exempi is installed
CONFIGURE_ARGS+=	--enable-xmp=no

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE=x11

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
