# $OpenBSD: Makefile,v 1.14 2013/08/07 21:31:53 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	cross-platform interactive fiction player

DISTNAME =	gargoyle-2010.1-sources
PKGNAME =	gargoyle-2010.1
REVISION =	1
EPOCH =		0

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Various. Gargoyle is a frontend for various other included
# programs under differing licenses; many GPL but some others.
# Refer to ${WRKSRC}/License.txt.
PERMIT_PACKAGE_CDROM =	noncommercial only for some parts
PERMIT_PACKAGE_FTP =	Yes

WANTLIB +=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender c cairo expat fontconfig \
		freetype m pixman-1 pthread pthread-stubs xcb stdc++ \
		vorbisfile z gdk_pixbuf-2.0 SDL>=2.0 SDL_sound SDL_mixer \
		atk-1.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		gdk-x11-2.0 jpeg>=62 pango-1.0>=1600.0 \
		pangocairo-1.0>=1600.0 pangoft2-1.0>=1600.0 png>=3 smpeg \
		GL Xxf86vm drm gthread-2.0 xcb-render xcb-shm

MASTER_SITES =	https://garglk.googlecode.com/files/
EXTRACT_SUFX =	.zip

MODULES =	devel/gettext
BUILD_DEPENDS =	devel/jam
LIB_DEPENDS =	devel/sdl-sound \
		devel/sdl-mixer \
		x11/gtk+2 \
		graphics/jpeg


NO_TEST =		Yes

WRKDIST =		${WRKDIR}

INSTALL_TARGET =	install install_man
JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=		CC=${CC} CXX=${CXX}
DESTDIRNAME =		DESTPREFIX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/garglk/launchgtk.c

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} \
		DESTDIR=${PREFIX}/libexec/gargoyle jam ${JAMDEBUG} install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gargoyle
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gargoyle
	${INSTALL_SCRIPT} ${WRKSRC}/build/openbsd.release/garglk/gargoyle \
	    ${PREFIX}/libexec/gargoyle/
	ln -s ${TRUEPREFIX}/libexec/gargoyle/gargoyle ${PREFIX}/bin/
	ln -s ${TRUEPREFIX}/libexec/gargoyle/libgarglk.so ${PREFIX}/lib/
.for i in License.txt licenses/* garglk/*txt
	cd ${WRKSRC} && ${INSTALL_DATA} $i ${PREFIX}/share/doc/gargoyle
.endfor
	${INSTALL_DATA} ${WRKSRC}/garglk/garglk.ini \
	    ${PREFIX}/share/examples/gargoyle

.include <bsd.port.mk>
