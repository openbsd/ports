COMMENT=	game where you deal drugs on the streets of NY

DISTNAME=	dopewars-1.6.1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dopewars/}

HOMEPAGE=	https://dopewars.sourceforge.io/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curl curses glib-2.0 iconv intl

LIB_DEPENDS+=   devel/glib2 \
		net/curl

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/games

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-nls \
		 --enable-strict \
		 --without-esd \
		 --disable-gui-server \
		 --disable-plugins \
		 --without-sdl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --disable-gui-client
.else
RUN_DEPENDS+=	devel/xdg-utils
LIB_DEPENDS+=	x11/gtk+3
WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += gobject-2.0 gtk-3 harfbuzz pango-1.0 pangocairo-1.0
.endif

post-patch:
	@perl -pi -e 's,/usr/local,${LOCALBASE},' ${WRKSRC}/src/dopewars.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dopewars
	${INSTALL_DATA} ${WRKSRC}/doc/example-cfg \
		${PREFIX}/share/examples/dopewars/dopewars.cfg
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/dopewars/dopewars.sco
	${PREFIX}/bin/dopewars -C ${PREFIX}/share/examples/dopewars/dopewars.sco
	${INSTALL_DATA} ${WRKSRC}/dopewars.desktop \
		${PREFIX}/share/examples/dopewars

.include <bsd.port.mk>
