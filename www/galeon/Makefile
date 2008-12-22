# $OpenBSD: Makefile,v 1.42 2008/12/22 22:26:18 jasper Exp $

COMMENT=	GNOME web browser based on gecko

V=		2.0.3
DISTNAME=	galeon-${V}
PKGNAME=	${DISTNAME}p5
CATEGORIES=	www

HOMEPAGE=	http://galeon.sourceforge.net/

# GPLv2
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
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 plc4 \
		plds4 png popt pthread ssl startup-notification-1 stdc++ \
		util z \
		freebl3 nss3 nssckbi smime3 softokn3 ssl3 \
		Xcomposite Xdamage gailutil pcre gio-2.0 pixman-1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	:xulrunner-devel->=1.8.1:devel/xulrunner,-devel \
		${RUN_DEPENDS}
RUN_DEPENDS=	:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils \
		:gnome-icon-theme-*:x11/gnome/icon-theme \
		:gnome-themes-*:x11/gnome/themes \
		:iso-codes-*:devel/iso-codes \
		:rarian-*:textproc/rarian \
		:yelp-*:x11/gnome/yelp \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gnome-desktop-2::x11/gnome/desktop \
		gnomeui-2.>=1400::x11/gnome/libgnomeui \
		xulrunner/gtkembedmoz,xulrunner/xpcom,xulrunner/xul:xulrunner->=1.8.1:devel/xulrunner \
		xml2.>=6.12::textproc/libxml

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nss -I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lfreebl3 -lnss3 -lnssckbi -lsmime3 -lsoftokn3 -lssl3 -pthread -L${X11BASE}/lib -L${LOCALBASE}/xulrunner"

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mozilla=xulrunner \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/galeon \
		--disable-schemas-install \
		--disable-gtkhtml

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/galeon/
	mv ${WRKINST}${SYSCONFDIR}/sound/ \
		${PREFIX}/share/examples/galeon/sound/

.include <bsd.port.mk>
