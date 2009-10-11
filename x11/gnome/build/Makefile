# $OpenBSD: Makefile,v 1.9 2009/10/11 18:29:12 jasper Exp $

COMMENT=	GNOME Build Framework (GBF)

GNOME_PROJECT=	gnome-build
GNOME_VERSION=	2.24.1
PKGNAME=	${DISTNAME}p5

SHARED_LIBS +=  gbf-1                1.0      # .2.0
SHARED_LIBS +=  gbf-widgets-1        1.0      # .2.0
CATEGORIES=	devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-keyring
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += pthread-stubs ssl util xcb xml2 z

LIB_DEPENDS=	gdl-1::x11/gnome/gdl \
		gnomeui-2::x11/gnome/libgnomeui
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Locale-gettext

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
