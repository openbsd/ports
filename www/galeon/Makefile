# $OpenBSD: Makefile,v 1.34 2007/05/15 14:47:36 martynas Exp $

COMMENT=	"GNOME web browser based on gecko"

V=		2.0.3
DISTNAME=	galeon-${V}
CATEGORIES=	www

HOMEPAGE=	http://galeon.sourceforge.net/

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
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 plc4 \
		plds4 png popt pthread ssl startup-notification-1 stdc++ \
		util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULES=	devel/gettext

BUILD_DEPENDS=	:mozilla-firefox-devel->=2.0:www/mozilla-firefox,-devel \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		${RUN_DEPENDS}
RUN_DEPENDS=	:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils \
		:gnome-icon-theme-*:x11/gnome/icon-theme \
		:gnome-themes-*:x11/gnome/themes \
		:iso-codes-*:devel/iso-codes \
		:scrollkeeper-*:textproc/scrollkeeper \
		:yelp-*:x11/gnome/yelp
LIB_DEPENDS=	gnome-desktop-2::x11/gnome/desktop \
		gnomeui-2.>=1400::x11/gnome/libgnomeui \
		mozilla-firefox/gtkembedmoz,mozilla-firefox/xpcom,mozilla-firefox/xpcom_core:mozilla-firefox->=2.0:www/mozilla-firefox \
		xml2.>=6.12::textproc/libxml

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/mozilla-firefox -L${LOCALBASE}/lib"

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mozilla=firefox \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/galeon \
		--disable-schemas-install \
		--disable-gtkhtml

WRKDIST=	${WRKDIR}/galeon-${V}/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/galeon/sound/events
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/sound/events/galeon.soundlist ${PREFIX}/share/examples/galeon/sound/events/

.include <bsd.port.mk>
