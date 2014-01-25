# $OpenBSD: Makefile,v 1.16 2014/01/25 12:49:08 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	cross-platform interactive fiction player

DISTNAME =	gargoyle-2011.1-sources
PKGNAME =	gargoyle-2011.1
EPOCH =		0
REVISION =	0

CATEGORIES =	games x11

HOMEPAGE =	http://ccxvii.net/gargoyle/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Various. Gargoyle is a frontend for various other included
# programs under differing licenses; many GPL but some others.
# Refer to ${WRKSRC}/License.txt.
PERMIT_PACKAGE_CDROM =	noncommercial only for some parts
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += SDL SDL_mixer SDL_sound X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png pthread smpeg stdc++
WANTLIB += vorbisfile z

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
JAMDEBUG +=	-sEXEMODE=755
MAKE_ENV +=		CC=${CC} CXX=${CXX}
DESTDIRNAME =		DESTPREFIX

# dos line-endings in file needing patch
post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' garglk/launchgtk.c tads/Jamfile garglk/Jamfile garglk/glk.h

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
