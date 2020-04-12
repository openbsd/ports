# $OpenBSD: Makefile,v 1.52 2020/04/12 02:17:15 cwen Exp $

COMMENT =	emulates the Super Nintendo Entertainment System
BROKEN-alpha =	ICE/failure on filter/hq2x.cpp
BROKEN-hppa =	ICE/failure on filter/hq2x.cpp

GH_ACCOUNT =	snes9xgit
GH_PROJECT =	snes9x
GH_TAGNAME =	1.60
REVISION =	1

CATEGORIES =	emulators games

HOMEPAGE =	http://www.snes9x.com/

# non-commercial
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 X11 Xext Xrandr Xv atk-1.0
WANTLIB += c cairo cairo-gobject epoxy gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0
WANTLIB += png z

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/sdl2 \
		graphics/png \
		x11/gtk+3

MODULES =	devel/meson \
		textproc/intltool

COMPILER =	base-clang ports-gcc

CONFIGURE_ENV =	LDFLAGS="-L${X11BASE}/lib"

CONFIGURE_ARGS = -Dportaudio=false \
		 -Doss=false \
		 -Dalsa=false \
		 -Dpulseaudio=false \
		 -Dsystem-zip=false

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/gtk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snes9x
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${PREFIX}/share/doc/snes9x
	cd ${WRKDIST}/docs && ${INSTALL_DATA} control-inputs.txt controls.txt \
	    snapshots.txt ${PREFIX}/share/doc/snes9x
	cd ${WRKDIST}/unix && ${INSTALL_DATA} snes9x.conf.default \
	    ${PREFIX}/share/examples/snes9x

.include <bsd.port.mk>
