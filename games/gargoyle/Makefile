# $OpenBSD: Makefile,v 1.5 2009/08/28 01:02:20 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	cross-platform interactive fiction player

DISTNAME =	gargoyle-2009-08-25-sources
PKGNAME =	gargoyle-20090825

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Various. Gargoyle is a frontend for various other included
# programs under differing licenses; many GPL but some others.
# Refer to ${WRKSRC}/License.txt.
PERMIT_PACKAGE_CDROM =	noncommercial only for some parts
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =noncommercial only for some parts
PERMIT_DISTFILES_FTP =	Yes

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
DESTDIRNAME =		DESTPREFIX

post-extract:
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

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
.for i in License.txt licenses/* garglk/*txt
	cd ${WRKSRC} && ${INSTALL_DATA} $i ${PREFIX}/share/doc/gargoyle
.endfor
	${INSTALL_DATA} ${WRKSRC}/garglk/garglk.ini \
	    ${PREFIX}/share/examples/gargoyle

.include <bsd.port.mk>
