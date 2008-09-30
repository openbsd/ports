# $OpenBSD: Makefile,v 1.11 2008/09/30 10:31:25 ajacoutot Exp $

COMMENT=		archive manager for GNOME

GNOME_PROJECT=		file-roller
GNOME_VERSION=		2.20.3
PKGNAME=		${DISTNAME}p5
CATEGORIES=		archivers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		popt pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gtar-*:archivers/gtar \
			:unzip-*:archivers/unzip \
			:zip-*:archivers/zip
LIB_DEPENDS=		gnomeui-2.>=1800::x11/gnome/libgnomeui \
			nautilus-extension.>=1::x11/gnome/nautilus

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS=		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/file-roller \
			--disable-schemas-install \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
