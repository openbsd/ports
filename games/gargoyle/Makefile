# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:42 kili Exp $

SHARED_ONLY =	Yes

COMMENT =	cross-platform interactive fiction player

DISTNAME =	gargoyle-2008-12-25-sources
PKGNAME =	gargoyle-20081225p2

# not a libtool port; any additional libs will need further changes.
SHARED_LIBS =	garglk 0.0

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Various. Gargoyle is a frontend for various other included
# programs under differing licenses; many GPL but some others.
# Refer to ${WRKSRC}/License.txt. terps/alan{2,3} and the
# Gargoyle Glk library lack a clear license.
PERMIT_PACKAGE_CDROM =	missing a few licenses
PERMIT_PACKAGE_FTP =	missing a few licenses
PERMIT_DISTFILES_CDROM =missing a few licenses
PERMIT_DISTFILES_FTP =	missing a few licenses

WANTLIB +=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender c cairo expat fontconfig \
		freetype iconv m pixman-1 pthread pthread-stubs xcb stdc++ \
		vorbisfile z

MASTER_SITES =	http://garglk.googlecode.com/files/
EXTRACT_SUFX =	.zip

MODULES =	devel/gettext
BUILD_DEPENDS =	::devel/jam
LIB_DEPENDS =	SDL.>=2.0::devel/sdl \
		SDL_sound::devel/sdl-sound \
		SDL_mixer::devel/sdl-mixer \
		atk-1.0::devel/atk \
		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
		glitz::graphics/glitz \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		jpeg.>=62::graphics/jpeg \
		pango-1.0.>=1600.0,pangocairo-1.0.>=1600.0,pangoft2-1.0.>=1600.0::devel/pango \
		png.>=3::graphics/png \
		smpeg::devel/smpeg

USE_X11 =		Yes

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}

INSTALL_TARGET =	install install_man
JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=		CC=${CC} CXX=${CXX}

post-extract:
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

# SUBST_CMD replaces $\ with $ which breaks this file.
pre-configure:
	perl -pi -e s,%PREFIX%,${PREFIX},g ${WRKSRC}/garglk/launcher.sh

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} jam \
		${JAMDEBUG} install

post-install:
	chmod -R og+rw ${WRKSRC}/build/dist
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/gargoyle
	for i in `find ${WRKSRC}/build/dist -type f ! \( -name "lib*.so*" \
	    -or -name gargoyle \)`; \
	    do ${INSTALL_PROGRAM} $$i ${PREFIX}/libexec/gargoyle; done
	${INSTALL_DATA} ${WRKSRC}/build/dist/libgarglk.so* ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKSRC}/build/dist/gargoyle ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gargoyle
.for i in License.txt licenses/* garglk/*txt
	cd ${WRKSRC} && ${INSTALL_DATA} $i ${PREFIX}/share/doc/gargoyle
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gargoyle
	${INSTALL_DATA} ${WRKSRC}/garglk/garglk.ini \
	    ${PREFIX}/share/examples/gargoyle

.include <bsd.port.mk>
