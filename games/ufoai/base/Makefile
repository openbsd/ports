# $OpenBSD: Makefile,v 1.7 2013/03/11 11:07:41 espie Exp $

SHARED_ONLY = 		Yes

COMMENT-main =		squad-based tactical strategy game
COMMENT-editor = 	UFO:AI map editor

V = 			2.3.1
DISTNAME =		ufoai-${V}-source
PKGNAME-main =		${DISTNAME:S/-source//}
REVISION-main = 	3
PKGNAME-editor = 	uforadiant-${V}
REVISION-editor = 	4

EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES = 	-main -editor

cWANTLIB += GL SDL SDL_image c jpeg m ogg png pthread tiff 
cWANTLIB += vorbis vorbisfile z execinfo ${MODGETTEXT_WANTLIB}

WANTLIB-main += FLAC SDL_mixer SDL_ttf crypto curl curses 
WANTLIB-main += idn mikmod smpeg ssl theora
WANTLIB-main += xvidcore ${cWANTLIB}

WANTLIB-editor += GLU ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB-editor += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender
WANTLIB-editor += Xt atk-1.0 cairo expat fontconfig
WANTLIB-editor += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB-editor += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-editor += gtk-x11-2.0 gtkglext-x11-1.0 gtksourceview-2.0
WANTLIB-editor += openal pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-editor += pangox-1.0 pixman-1 pthread-stubs stdc++ xcb
WANTLIB-editor += xcb-render xcb-shm xml2 ${cWANTLIB}

MODULES = 		devel/gettext

BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS = 		games/ufoai/data>=${V} \
			devel/desktop-file-utils

LIB_DEPENDS-main =	devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/libexecinfo \
			multimedia/libtheora \
			multimedia/xvidcore \
			net/curl \
			${MODGETTEXT_LIB_DEPENDS}

LIB_DEPENDS-editor = 	audio/libvorbis \
			audio/openal \
			devel/libexecinfo \
			devel/sdl-image \
			x11/gtkglext \
			x11/gtksourceview \
			${MODGETTEXT_LIB_DEPENDS}

USE_GMAKE =		Yes
MAKE_FLAGS += 		${CONFIGURE_ENV}

CFLAGS += 		-pthread

AUTOCONF_VERSION = 	2.67
AUTOMAKE_VERSION = 	1.9
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-release=yes \
			--enable-ufo2map \
			--enable-uforadiant \
			--disable-tests

CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
				-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -liconv -lexecinfo"

NO_TEST = 		Yes

ALL_TARGET = 		all uforadiant lang
INSTALL_TARGET = 	install_exec

post-extract:
	mkdir -p ${WRKSRC}/base/{maps,models}
	mv ${WRKSRC}/debian/ufo.6 ${WRKSRC}/debian/ufoai.6

pre-configure:
	perl -pi -e 's,/usr/share/games/,${PREFIX}/share/,g' ${WRKSRC}/debian/*.6
	perl -pi -e 's,/usr/games/,${PREFIX}/bin/,g' ${WRKSRC}/debian/*.desktop
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf

post-install:
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/ufoai
	${INSTALL_DATA} ${WRKSRC}/LICENSES ${PREFIX}/share/ufoai
	${INSTALL_MAN} ${WRKSRC}/debian/*.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/debian/*.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/debian/*.xpm ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/ufoai/radiant/
	cd ${WRKSRC}/radiant && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/ufoai/radiant/{}" \;
	cd ${WRKSRC}/radiant && find * -type f -mindepth 1 -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/ufoai/radiant/{}" \;
	${INSTALL_PROGRAM} ${WRKSRC}/radiant/uforadiant \
		${PREFIX}/share/ufoai/radiant/

.include <bsd.port.mk>
