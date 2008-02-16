# $OpenBSD: Makefile,v 1.4 2008/02/16 19:46:03 jasper Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		2.20.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=		editors

HOMEPAGE=		http://live.gnome.org/Gedit/Plugins

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeprint-2-2 gnomeprintui-2-2 gnomeui-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 gtksourceview-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png \
		popt ssl util xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::x11/gnome/doc-utils
RUN_DEPENDS=		::devel/vte,-python \
			:gedit->=2.20.0:x11/gnome/gedit \
			:gucharmap-*:x11/gnome/gucharmap \
			:py-gtk2-*:x11/py-gtk2

USE_X11=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gedit \
			--disable-schemas-install \
			--with-plugins=all
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
