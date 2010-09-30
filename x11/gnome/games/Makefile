# $OpenBSD: Makefile,v 1.37 2010/09/30 15:20:50 ajacoutot Exp $

COMMENT=		collection of games for the GNOME desktop

GNOME_PROJECT=		gnome-games
GNOME_VERSION=		2.32.0

REVISION=		0

CATEGORIES=		games

HOMEPAGE=		http://live.gnome.org/GnomeGames/

# GPLv2/GDFLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage rsvg-2
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm guile
WANTLIB += atk-1.0 c cairo canberra canberra-gtk clutter-glx-1.0
WANTLIB += croco-0.6 dbus-1 dbus-glib-1 drm expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gmp gobject-2.0 gthread-2.0 gtk-x11-2.0 json-glib-1.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-render-util xml2 z clutter-gtk-0.10

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/py-gnome-desktop
LIB_DEPENDS=		::graphics/clutter/clutter-gtk \
			::lang/guile \
			::x11/gnome/librsvg
RUN_DEPENDS=		::x11/gnome/py-gnome-desktop \
			::multimedia/gstreamer-0.10/plugins-good
REGRESS_DEPENDS=	::devel/check

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-games

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--localstatedir="/var" \
			--with-scores-group="games" \
			--disable-introspection

# XXX
# gnome-sudoku needs python-2.6
# lightsoff and swell-foop needs seed
CONFIGURE_ARGS+=	--enable-omitgames=gnome-sudoku,lightsoff,swell-foop

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE= x11

FAKE_FLAGS=		scoredir=${PREFIX}/share/gnome-games/scores/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/glchess/src/glchess.in.in \
		${WRKSRC}/gnome-sudoku/src/gnome-sudoku.in.in

.include <bsd.port.mk>
