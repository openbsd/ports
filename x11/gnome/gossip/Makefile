# $OpenBSD: Makefile,v 1.2 2007/07/05 22:50:10 jasper Exp $

COMMENT=		Jabber client for the GNOME desktop

GNOME_PROJECT=		gossip
GNOME_VERSION=		0.24
CATEGORIES=		net

HOMEPAGE=		http://developer.imendio.com/projects/gossip/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xss art_lgpl_2 \
		atk-1.0 audiofile bonobo-2 bonobo-activation bonoboui-2 \
		c cairo crypto dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png popt \
		pthread ssl util xml2 z

# XXX: To be fixed
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gossip/0.24/}

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/doc-utils
LIB_DEPENDS=		idn.>=16::devel/libidn \
			notify::devel/libnotify \
			loudmouth-1::net/loudmouth \
			panel-applet-2::x11/gnome/panel
RUN_DEPENDS=		::devel/iso-codes \
			::textproc/scrollkeeper \
			::x11/gnome/yelp \
			::x11/hicolor-icon-theme

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gossip \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-galago \
			--disable-telepathy \
			--disable-aspell
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gossip/sound/events
	${INSTALL_DATA} ${WRKSRC}/src/sounds/gossip.soundlist \
		${PREFIX}/share/examples/gossip/sound/events

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
