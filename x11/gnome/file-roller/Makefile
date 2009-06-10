# $OpenBSD: Makefile,v 1.25 2009/06/10 20:42:05 kili Exp $

COMMENT=		archive manager for GNOME

GNOME_PROJECT=		file-roller
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p6

CATEGORIES=		archivers

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt pthread ssl util \
		xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

RUN_DEPENDS=		:gtar-*:archivers/gtar \
			:lzma-*:archivers/lzma \
			:unzip-*:archivers/unzip \
			:zip-*:archivers/zip \
			::archivers/gcpio \
			:rpm2cpio-*|rpm-*:converters/rpm2cpio
LIB_DEPENDS=		gnomeui-2.>=1800::x11/gnome/libgnomeui \
			nautilus-extension.>=1::x11/gnome/nautilus

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	file-roller

CONFIGURE_ARGS=		--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
