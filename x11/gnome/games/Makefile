# $OpenBSD: Makefile,v 1.15 2009/04/16 08:11:13 ajacoutot Exp $

COMMENT=		collection of games for the GNOME desktop

GNOME_PROJECT=		gnome-games
GNOME_VERSION=		2.24.3.1

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
		expat fontconfig freetype gailutil gconf-2 gcrypt \
		gdk-x11-2.0 gdk_pixbuf-2.0 ggz gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 \
		gobject-2.0 gpg-error gsf-1 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt pthread ssl stdc++ util xml2 z gstreamer-0.10

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

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

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-games \
			--disable-schemas-install \
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
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS=		DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/glchess/src/glchess.in.in \
		${WRKSRC}/glchess/src/lib/scene/opengl/png.py \
		${WRKSRC}/gnome-sudoku/src/gnome-sudoku.in.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-games/
	mv ${WRKINST}/${SYSCONFDIR}/ggz.modules \
		${PREFIX}/share/examples/gnome-games

.include <bsd.port.mk>
