# $OpenBSD: Makefile,v 1.33 2009/01/12 17:37:25 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		2.24.0

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 bz2 \
		c cairo crypto dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 \
		gtk-x11-2.0 m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 plc4 plds4 png popt pthread ssl stdc++ util xml2 z \
		Xcomposite Xdamage gailutil gio-2.0 pcre rarian sndio

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/xulrunner,-devel \
			::x11/gnome/doc-utils
RUN_DEPENDS=		::misc/shared-mime-info \
			::textproc/docbook-dsssl \
			::x11/gnome/users-guide \
			::x11/gnome/doc-utils
LIB_DEPENDS=		startup-notification-1::devel/startup-notification \
			xulrunner/gtkembedmoz,xulrunner/xpcom,xulrunner/xul::devel/xulrunner,-main \
			gnomeui-2::x11/gnome/libgnomeui \
			exslt,xslt::textproc/libxslt \
			lzmadec::archivers/lzma

USE_X11=		Yes

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/yelp/ \
			--with-gecko=xulrunner \
			--with-search=basic
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/xulrunner/include/" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
