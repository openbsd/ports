# $OpenBSD: Makefile,v 1.14 2009/06/19 09:24:14 sthen Exp $

COMMENT=		GUI for dctc (Direct Connect Text Clone)

V=			0.80
DISTNAME=		dc_gui2-$V
PKGNAME=		dc_gui-$Vp2
CATEGORIES=		net x11
HOMEPAGE=		http://ac2i.homelinux.com/dctc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png popt pthread ssl util xml2 z \
		avahi-client avahi-common avahi-glib

MODULES=		devel/gettext

BUILD_DEPENDS=		:dctc->=0.85.9:net/dctc
RUN_DEPENDS=		::devel/desktop-file-utils \
			:dctc->=0.85.9:net/dctc \
			::x11/gnome/yelp
LIB_DEPENDS=		db:db->=4,<5:databases/db/v4 \
			curl::net/curl \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
USE_LIBTOOL=		Yes
VMEM_WARNING=		Yes

AUTOCONF_VERSION=	2.57

CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/db4 \
			-I${WRKSRC}/dc_gui2_com_channel/src/" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
