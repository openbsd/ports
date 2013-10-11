# $OpenBSD: Makefile,v 1.60 2013/10/11 23:49:36 naddy Exp $

COMMENT=	game where you deal drugs on the streets of NY

DISTNAME=	dopewars-1.5.12
REVISION=	10
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dopewars/}

HOMEPAGE=	http://dopewars.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 ncurses

MODULES+=	devel/gettext

LIB_DEPENDS+=   devel/glib2

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
LIB_DEPENDS+=	x11/gtk+2
WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z
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
