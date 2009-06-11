# $OpenBSD: Makefile,v 1.15 2009/06/11 18:38:16 ajacoutot Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		2.22.5
PKGNAME=		${DISTNAME}p6
CATEGORIES=		editors

HOMEPAGE=		http://live.gnome.org/Gedit/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 gtksourceview-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png ssl util xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::x11/gnome/doc-utils
LIB_DEPENDS=		gucharmap:gucharmap->=2.24.1.1:x11/gnome/gucharmap
RUN_DEPENDS=		::devel/vte,-python \
			:gedit->=2.22.0:x11/gnome/gedit \
			:py-gtk2->=2.12.0:x11/py-gtk2

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	gedit

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-plugins=all
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
