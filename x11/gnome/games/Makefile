# $OpenBSD: Makefile,v 1.24 2009/10/13 00:00:41 jasper Exp $

COMMENT=		collection of games for the GNOME desktop

GNOME_PROJECT=		gnome-games
GNOME_VERSION=		2.28.0

CATEGORIES=		games

HOMEPAGE=		http://live.gnome.org/GnomeGames/

# GPLv2/GDFLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 bz2 c cairo clutter-glx-1.0 croco-0.6 crypto
WANTLIB += dbus-1 dbus-glib-1 drm expat fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 ggz gio-2.0 glib-2.0 glitz
WANTLIB += gmodule-2.0 gmp gobject-2.0 gpg-error gsf-1 gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 ltdl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ssl stdc++ xcb xml2 z

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/py-gnome-desktop
LIB_DEPENDS=		ggzcore,ggzmod::games/ggz/ggz-client-libs \
			clutter-gtk-0.10::graphics/clutter/clutter-gtk \
			guile::lang/guile \
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
			--with-scores-group="games" \
			--enable-introspection="no"
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
