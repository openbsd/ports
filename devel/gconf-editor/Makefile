# $OpenBSD: Makefile,v 1.61 2011/10/16 20:51:12 jasper Exp $

COMMENT=	editor for the GConf configuration system

GNOME_PROJECT=	gconf-editor
GNOME_VERSION=	3.0.0

REVISION=	2

CATEGORIES=	devel x11

HOMEPAGE=	http://www.gnome.org/projects/gconf/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	x11/gtk+3

RUN_DEPENDS=	devel/gconf2,-polkit

USE_GROFF=	Yes
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= yelp
MODGCONF2_SCHEMAS_DIR=	gconf-editor

CONFIGURE_STYLE=gnu

# the devel/gconf2 MODULE overrides the path to gconftool-2
CONFIGURE_ARGS += --with-gconf-defaults-source="xml:merged:/var/db/gconf/gconf.xml.defaults" \
	--with-gconf-mandatory-source="xml:merged:/var/db/gconf/gconf.xml.mandatory"

.include <bsd.port.mk>
