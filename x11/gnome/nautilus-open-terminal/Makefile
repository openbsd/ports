# $OpenBSD: Makefile,v 1.8 2009/10/14 10:11:55 ajacoutot Exp $

# dlopen() module
SHARED_ONLY=	Yes

COMMENT=	open terminal from a nautilus folder

GNOME_PROJECT=	nautilus-open-terminal
GNOME_VERSION=	0.17

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-desktop-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs startup-notification-1 xcb xcb-atom
WANTLIB += xcb-aux xcb-event z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	nautilus-extension.>=2::x11/gnome/nautilus

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= nautilus-open-terminal

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
