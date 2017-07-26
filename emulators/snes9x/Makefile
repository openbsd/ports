# $OpenBSD: Makefile,v 1.37 2017/07/26 22:45:20 sthen Exp $

COMMENT =	emulates the Super Nintendo Entertainment System
BROKEN-alpha =	ICE/failure on filter/hq2x.cpp
BROKEN-hppa =	ICE/failure on filter/hq2x.cpp
BROKEN-powerpc =ICE/failure on filter/hq2x.cpp

DISTNAME =	snes9x-1.54.1
CATEGORIES =	emulators games
REVISION =	0

HOMEPAGE =	http://www.snes9x.com/

# non-commercial
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xv atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png pthread xml2 z ${COMPILER_LIBCXX}

MASTER_SITES =	https://sites.google.com/site/bearoso/snes9x/
EXTRACT_SUFX =	.tar.bz2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	devel/sdl \
		graphics/png \
		textproc/libxml \
		x11/gtk+2 

MODULES =	devel/gettext \
		textproc/intltool \

COMPILER =	gcc

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --without-portaudio \
		 --without-oss \
		 --without-alsa \
		 --without-pulseaudio \
		 --without-opengl 
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/gtk

# fix build with glib2>=2.50
pre-configure:
	sed -i "s,-pedantic,," ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snes9x
	cd ${WRKDIST}/docs && ${INSTALL_DATA} \
	    control-inputs.txt controls.txt snapshots.txt snes9x-license.txt \
	    ${PREFIX}/share/doc/snes9x
	cd ${WRKDIST}/docs && ${INSTALL_DATA} snes9x.conf.default \
	    ${PREFIX}/share/examples/snes9x

.include <bsd.port.mk>
