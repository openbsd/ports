# $OpenBSD: Makefile,v 1.1.1.1 2007/06/17 14:55:26 martynas Exp $

COMMENT=		"archive manager for GNOME"

DISTNAME=		file-roller-2.18.3

CATEGORIES=		archivers x11 x11/gnome

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv \
		intl jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png \
		popt pthread ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/file-roller/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils \
			:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2.>=1800::x11/gnome/libgnomeui \
			nautilus-extension.>=1::x11/gnome/nautilus

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/file-roller \
			--disable-schemas-install \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
