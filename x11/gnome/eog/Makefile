# $OpenBSD: Makefile,v 1.18 2007/07/05 22:50:10 jasper Exp $

COMMENT=		Eye of GNOME: an image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		2.18.2
CATEGORIES=		graphics

MAINTAINER=		Thomas Delaet <thomas@delaet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png popt \
		pthread startup-notification-1 xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils \
			:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme->=2.18.0:x11/gnome/icon-theme
LIB_DEPENDS=		gnome-desktop-2.>=5::x11/gnome/desktop \
			exif::graphics/libexif \
			lcms.>=1::graphics/lcms
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme->=2.18.0:x11/gnome/icon-theme

USE_X11=		Yes
DESKTOP_FILES=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/eog \
			--disable-schemas-install \
			--with-libexif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
