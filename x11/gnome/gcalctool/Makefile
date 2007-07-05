# $OpenBSD: Makefile,v 1.3 2007/07/05 22:50:10 jasper Exp $

COMMENT=		GTK2 desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		5.9.14

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/bison \
			::devel/gconf2 \
			::textproc/scrollkeeper \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		::x11/gnome/yelp

USE_X11=		Yes
DESKTOP_FILES=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gcalctool/ \
			--disable-schemas-install

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
