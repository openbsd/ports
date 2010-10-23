# $OpenBSD: Makefile,v 1.14 2010/10/23 22:01:30 sthen Exp $

COMMENT =	emulates the Super Nintendo Entertainment System

DISTNAME =	snes9x-1.52-src
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	emulators games

REVISION =	1

HOMEPAGE =	http://www.snes9x.com/

# non-commercial
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender Xv atk-1.0 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 pthread pthread-stubs stdc++ \
		xcb xcb-render xcb-render-util z gdk_pixbuf-2.0 \
		glade-2.0 SDL png xml2 gtk-x11-2.0 gdk-x11-2.0

MASTER_SITES =	http://sites.google.com/site/bearoso/snes9x/
EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS =	::textproc/intltool
RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	::devel/libglade2 \
		::devel/sdl \
		::graphics/png \
		::textproc/libxml \
		::x11/gtk+2 

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS =  ::devel/nasm 
.endif

MODULES =	devel/gettext

USE_X11 =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-silent-rules \
		 --without-portaudio \
		 --without-oss \
		 --without-alsa \
		 --without-pulseaudio \
		 --without-opengl 
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		DATADIRNAME="share"

NO_REGRESS =	Yes

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
