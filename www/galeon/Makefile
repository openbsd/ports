# $OpenBSD: Makefile,v 1.52 2009/07/27 21:44:14 martynas Exp $

COMMENT=	GNOME web browser based on gecko

DISTNAME=	galeon-2.0.7
PKGNAME=	${DISTNAME}p7

CATEGORIES=	www

HOMEPAGE=	http://galeon.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freebl3 freetype gailutil gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m nspr4 nss3 nssckbi pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt pthread smime3 softokn3 ssl ssl3 startup-notification-1 \
		stdc++ util z avahi-client avahi-common avahi-glib

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULES=	devel/gettext \
		textproc/intltool \
		devel/gconf2

BUILD_DEPENDS=	:xulrunner-devel->=1.8.1:devel/xulrunner/1.8,-devel \
		::textproc/rarian \
		${RUN_DEPENDS}
RUN_DEPENDS=	::devel/desktop-file-utils \
		::devel/iso-codes \
		::x11/gnome/doc-utils \
		::x11/gnome/icon-theme \
		::x11/gnome/themes \
		::x11/gnome/yelp

LIB_DEPENDS=	xulrunner/gtkembedmoz,xulrunner/xpcom,xulrunner/xul:xulrunner->=1.8.1:devel/xulrunner/1.8 \
		xml2::textproc/libxml \
		gnome-desktop-2::x11/gnome/desktop \
		gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nss -I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lfreebl3 -lnss3 -lnssckbi -lsmime3 -lsoftokn3 -lssl3 -pthread -L${X11BASE}/lib -L${LOCALBASE}/xulrunner"

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
MODGCONF2_SCHEMAS_DIR= galeon

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-mozilla="xulrunner" \
		--disable-gtkhtml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mozilla/mozilla-embed-shell.cpp \
		${WRKSRC}/doc/C/plugins.xml \
		${WRKSRC}/doc/es/plugins.xml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/galeon/
	mv ${WRKINST}${SYSCONFDIR}/sound/ \
		${PREFIX}/share/examples/galeon/sound/

.include <bsd.port.mk>
