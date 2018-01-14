# $OpenBSD: Makefile,v 1.40 2018/01/14 21:11:16 fcambus Exp $

COMMENT =	emulates the Super Nintendo Entertainment System
BROKEN-alpha =	ICE/failure on filter/hq2x.cpp
BROKEN-hppa =	ICE/failure on filter/hq2x.cpp
BROKEN-powerpc =ICE/failure on filter/hq2x.cpp

DISTNAME =	snes9x-1.55

CATEGORIES =	emulators games

HOMEPAGE =	http://www.snes9x.com/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# non-commercial
PERMIT_PACKAGE_CDROM =	non-commercial
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL X11 Xext Xrandr Xv atk-1.0
WANTLIB += c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0 png xml2 z

MASTER_SITES =	https://sites.google.com/site/bearoso/snes9x/
EXTRACT_SUFX =	.tar.bz2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/sdl \
		graphics/png \
		textproc/libxml \
		x11/gtk+3

MODULES =	textproc/intltool

COMPILER =	base-clang ports-gcc

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --without-portaudio \
		 --without-oss \
		 --without-alsa \
		 --without-pulseaudio \
		 --without-system-zip \
		 --with-gtk3

CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/gtk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snes9x
	cd ${WRKDIST}/docs && ${INSTALL_DATA} \
	    control-inputs.txt controls.txt snapshots.txt snes9x-license.txt \
	    ${PREFIX}/share/doc/snes9x
	cd ${WRKDIST}/docs && ${INSTALL_DATA} snes9x.conf.default \
	    ${PREFIX}/share/examples/snes9x

.include <bsd.port.mk>
