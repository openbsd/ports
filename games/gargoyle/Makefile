# $OpenBSD: Makefile,v 1.33 2021/02/25 22:26:02 sthen Exp $

COMMENT =	cross-platform interactive fiction player

GH_ACCOUNT =	garglk
GH_PROJECT =	garglk
GH_TAGNAME =	2019.1.1
EPOCH =		0
REVISION =	1

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

# Various. Gargoyle is a frontend for various other included
# programs under differing licenses; many GPL but some others.
# Refer to ${WRKSRC}/License.txt.
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} SDL SDL_mixer SDL_sound X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 intl jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/jam
LIB_DEPENDS =	devel/sdl-sound \
		devel/sdl-mixer \
		x11/gtk+2 \
		graphics/jpeg

NO_TEST =		Yes

INSTALL_TARGET =	install install_man
JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=		CC="${CC}" CXX="${CXX}" C++="${CXX}"
DESTDIRNAME =		DESTPREFIX

pre-configure:
	sed -i 's,/usr/local,${TRUEPREFIX},' ${WRKSRC}/garglk/launchgtk.c

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -j${MAKE_JOBS} ${JAMDEBUG}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    DESTDIR=${PREFIX}/libexec/gargoyle jam ${JAMDEBUG} install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gargoyle
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gargoyle
	${INSTALL_SCRIPT} ${WRKSRC}/build/openbsd.release/garglk/gargoyle \
	    ${PREFIX}/libexec/gargoyle/
	ln -s ${TRUEPREFIX}/libexec/gargoyle/gargoyle ${PREFIX}/bin/
	ln -s ${TRUEPREFIX}/libexec/gargoyle/libgarglk.so ${PREFIX}/lib/
.for i in License.txt licenses/*
	cd ${WRKSRC} && ${INSTALL_DATA} $i ${PREFIX}/share/doc/gargoyle
.endfor
	${INSTALL_DATA} ${WRKSRC}/garglk/garglk.ini \
	    ${PREFIX}/share/examples/gargoyle

.include <bsd.port.mk>
