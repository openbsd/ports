# $OpenBSD: Makefile,v 1.43 2009/08/11 08:39:38 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		lightweight GNOME text editor

# PLIST regen is needed for at least the following ports when
# the gedit plugins directory changes:
# (i.e. ${LOCALBASE}/lib/gedit-2/plugins)
# x11/gnome/gedit-plugins
# x11/gnome/seahorse-plugins

GNOME_PROJECT=		gedit
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p9
CATEGORIES=		editors

HOMEPAGE=		http://projects.gnome.org/gedit/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c \
		cairo dbus-1 dbus-glib-1 expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread stdc++ util xml2 z pthread-stubs xcb

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=		:iso-codes-*:devel/iso-codes \
			::x11/py-gtksourceview \
			:py-gtk2->=2.12.0:x11/py-gtk2
LIB_DEPENDS=		enchant::textproc/enchant \
			gtksourceview-2.0::x11/gtksourceview \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS=		:py-gtk2->=2.12.0:x11/py-gtk2 \
			::x11/py-gtksourceview \
			::x11/gnome/py-gnome

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gedit
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-python \
			--disable-attr
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm -lstdc++ -lintl -liconv"

.include <bsd.port.mk>
