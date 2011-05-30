# $OpenBSD: Makefile,v 1.54 2011/05/30 19:02:24 ajacoutot Exp $

COMMENT=	editor for the GConf configuration system

GNOME_PROJECT=	gconf-editor
GNOME_VERSION=	2.32.0
REVISION=	5

CATEGORIES=	devel x11

HOMEPAGE=	http://www.gnome.org/projects/gconf/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb z
WANTLIB += xcb-render xcb-render-util

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	x11/gtk+2

DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gconf-editor

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

# the devel/gconf2 MODULE overrides the path to gconftool-2
CONFIGURE_ARGS += --with-gconf-defaults-source="xml:merged:/var/db/gconf/gconf.xml.defaults" \
	--with-gconf-mandatory-source="xml:merged:/var/db/gconf/gconf.xml.mandatory"

.include <bsd.port.mk>
