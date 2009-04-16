# $OpenBSD: Makefile,v 1.22 2009/04/16 08:24:24 ajacoutot Exp $

COMMENT=		Jabber client for the GNOME desktop

GNOME_PROJECT=		gossip
GNOME_VERSION=		0.31
PKGNAME=		${DISTNAME}p9
CATEGORIES=		net

HOMEPAGE=		http://developer.imendio.com/projects/gossip/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xss art_lgpl_2 asn1 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi \
		gthread-2.0 gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 png \
		popt pthread smime3 softokn3 ssl ssl3 tasn1 util xml2 \
		z gio-2.0 soup-2.4 sqlite3

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/doc-utils
LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			idn.>=16::devel/libidn \
			notify::devel/libnotify \
			loudmouth-1.>=3::net/loudmouth \
			panel-applet-2::x11/gnome/panel
RUN_DEPENDS=		::devel/iso-codes \
			::x11/gnome/yelp \
			::x11/hicolor-icon-theme

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gossip \
			--enable-dbus \
			--enable-gnome-keyring \
			--enable-ebook \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-galago \
			--disable-telepathy \
			--disable-aspell
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gossip

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gossip/sound/events
	${INSTALL_DATA} ${WRKSRC}/src/sounds/gossip.soundlist \
		${PREFIX}/share/examples/gossip/sound/events

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
