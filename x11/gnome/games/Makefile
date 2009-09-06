# $OpenBSD: Makefile,v 1.22 2009/09/06 10:46:25 ajacoutot Exp $

COMMENT=		collection of games for the GNOME desktop

GNOME_PROJECT=		gnome-games
GNOME_VERSION=		2.24.3.1
PKGNAME=		${DISTNAME}p4

CATEGORIES=		games

HOMEPAGE=		http://live.gnome.org/GnomeGames/

# GPLv2/GDFLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 bz2 c cairo croco-0.6 crypto dbus-1 dbus-glib-1 \
		expat fontconfig freetype gailutil gcrypt \
		gdk-x11-2.0 gdk_pixbuf-2.0 ggz gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 \
		gobject-2.0 gpg-error gsf-1 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt pthread ssl stdc++ util xml2 z gstreamer-0.10 \
		avahi-client avahi-common avahi-glib pthread-stubs xcb

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::x11/gnome/py-gnome-desktop \
			::lang/guile
LIB_DEPENDS=		ggzcore,ggzmod::games/ggz/ggz-client-libs \
			guile-ltdl,guile::lang/guile \
			gnomeui-2::x11/gnome/libgnomeui \
			rsvg-2.>=18.0::x11/gnome/librsvg
RUN_DEPENDS=		::x11/gnome/py-gnome-desktop \
			::multimedia/gstreamer-0.10/plugins-good
REGRESS_DEPENDS=	::devel/check

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-games

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--disable-update-mimedb \
			--disable-sdl-mixer \
			--localstatedir="/var" \
			--with-tls="OpenSSL" \
			--enable-sound=yes \
			--with-sound=gstreamer \
			--enable-scalable \
			--without-ggz-server \
			--with-gcrypt \
			--with-scores-group="games"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE= x11

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/glchess/src/glchess.in.in \
		${WRKSRC}/glchess/src/lib/scene/opengl/png.py \
		${WRKSRC}/gnome-sudoku/src/gnome-sudoku.in.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-games/
	mv ${WRKINST}/${SYSCONFDIR}/ggz.modules \
		${PREFIX}/share/examples/gnome-games

.include <bsd.port.mk>
