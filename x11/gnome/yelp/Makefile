# $OpenBSD: Makefile,v 1.41 2009/06/10 20:27:09 kili Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p6

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 bz2 c cairo crypto dbus-1 dbus-glib-1 expat
WANTLIB += fontconfig freetype gailutil gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 m nspr4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png popt pthread ssl stdc++ util xml2 z
WANTLIB += avahi-client avahi-common avahi-glib

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

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
			lzmadec::archivers/lzma \
			rarian::textproc/rarian

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	yelp

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gecko=xulrunner \
			--with-search=basic
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/xulrunner/include/" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
