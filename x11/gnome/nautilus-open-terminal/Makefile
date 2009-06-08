# $OpenBSD: Makefile,v 1.3 2009/06/08 17:59:15 ajacoutot Exp $

# dlopen() module
SHARED_ONLY=	Yes

COMMENT=	open terminal from a nautilus folder

GNOME_PROJECT=	nautilus-open-terminal
GNOME_VERSION=	0.10
PKGNAME=	${DISTNAME}p1

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo crypto dbus-1 dbus-glib-1 eel-2 expat
WANTLIB += fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-desktop-2 gnome-keyring gnomecanvas-2 gnomeui-2
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += ssl startup-notification-1 util xml2 z

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
