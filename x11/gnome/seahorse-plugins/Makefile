# $OpenBSD: Makefile,v 1.8 2009/10/19 10:12:11 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	plugins and utilities for seahorse

GNOME_PROJECT=	seahorse-plugins
GNOME_VERSION=	2.28.1

CATEGORIES=	security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomevfs-2 gobject-2.0 gpg-error gpgme gthread-2.0
WANTLIB += gtk-x11-2.0 m notify nspr4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread
WANTLIB += pthread-stubs ssl util xcb xml2 z

BUILD_DEPENDS=	::devel/xulrunner/1.8,-devel \
		::www/epiphany \
		::x11/gnome/gedit

LIB_DEPENDS=	cryptui::x11/gnome/seahorse \
		gtksourceview-2.0.>=2::x11/gtksourceview \
		nautilus-extension.>=2::x11/gnome/nautilus\
		panel-applet-2.>=1::x11/gnome/panel \
		xulrunner/gtkembedmoz,xulrunner/xpcom:xulrunner->=1.8.1:devel/xulrunner/1.8

RUN_DEPENDS=	:shared-mime-info->=0.21:misc/shared-mime-info \
		::x11/gnome/gedit \
		::www/epiphany

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
MODGCONF2_SCHEMAS_DIR=	seahorse-plugins

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-scrollkeeper \
		--disable-update-mime-database \
		--with-gecko=xulrunner \
		--disable-cpp-rtti
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
