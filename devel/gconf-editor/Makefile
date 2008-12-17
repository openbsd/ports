# $OpenBSD: Makefile,v 1.29 2008/12/17 18:40:57 jasper Exp $

COMMENT=		editor for the GConf configuration system

GNOME_PROJECT=		gconf-editor
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gconf/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto esd expat fontconfig freetype \
		gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt \
		pthread ssl util xml2 z

BUILD_DEPENDS=		::textproc/rarian \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			dbus-1::x11/dbus \
			dbus-glib-1::x11/dbus-glib \
			gnomeui-2::x11/gnome/libgnomeui

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gconf-editor \
			--disable-schemas-install
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
