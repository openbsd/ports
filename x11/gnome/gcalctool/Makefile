# $OpenBSD: Makefile,v 1.23 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		GTK2 desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		5.24.3.1
PKGNAME=		${DISTNAME}p7

CATEGORIES=		math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread z dbus-1 dbus-glib-1 gio-2.0 \
		glade-2.0 pcre xml2 pthread-stubs xcb

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		glade-2.0.>=1::devel/libglade2
BUILD_DEPENDS=		::devel/bison

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gcalctool

USE_X11=		Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
