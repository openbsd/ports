# $OpenBSD: Makefile,v 1.23 2021/11/26 20:23:26 thfr Exp $

COMMENT-main =		squad-based tactical strategy game
COMMENT-editor = 	UFO:AI map editor

DISTNAME =		ufoai-${V}-source
PKGNAME-main =		${DISTNAME:S/-source//}
PKGNAME-editor = 	uforadiant-${V}
REVISION =		7

EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES = 	-main -editor

cWANTLIB += GL SDL c jpeg m ogg png pthread vorbis
cWANTLIB += z execinfo iconv intl
cWANTLIB += ${COMPILER_LIBCXX}

WANTLIB-main += SDL_mixer SDL_ttf curl mxml theora
WANTLIB-main += xvidcore ${cWANTLIB}

WANTLIB-editor += GLU ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB-editor += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender
WANTLIB-editor += Xt atk-1.0 cairo fontconfig freetype
WANTLIB-editor += gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB-editor += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-editor += gtk-x11-2.0 gtkglext-x11-1.0 gtksourceview-2.0
WANTLIB-editor += openal pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-editor += vorbisfile xml2 ${cWANTLIB}
WANTLIB-editor += harfbuzz

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS = 	devel/gettext,-tools
RUN_DEPENDS = 		games/ufoai/data \
			devel/desktop-file-utils

LIB_DEPENDS-main =	devel/sdl-mixer \
			devel/sdl-ttf \
			graphics/jpeg \
			graphics/png \
			multimedia/libtheora \
			multimedia/xvidcore \
			net/curl \
			textproc/mxml \
			${MODGCC4_CPPLIBDEP}

LIB_DEPENDS-editor = 	audio/libvorbis \
			audio/openal \
			devel/sdl \
			x11/gtkglext \
			x11/gtksourceview \
			${MODGCC4_CPPLIBDEP}

USE_GMAKE =		Yes
MAKE_ENV += 		${CONFIGURE_ENV}

CFLAGS += 		-pthread

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--enable-release \
			--enable-ufo2map \
			--enable-uforadiant \
			--disable-memory \
			--disable-sdl2 \
			--disable-testall \
			--datadir=${PREFIX}/share/ufoai

CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -liconv -lexecinfo" \
			Q=

post-extract:
	mkdir -p ${WRKSRC}/base/{maps,models}
	mv ${WRKSRC}/debian/ufo.6 ${WRKSRC}/debian/ufoai.6
	cp ${WRKSRC}/build/platforms/freebsd.mk ${WRKSRC}/build/platforms/openbsd.mk

pre-configure:
	perl -pi.beforesubst -e 's,/usr/share/games/,${PREFIX}/share/,g' ${WRKSRC}/debian/*.6
	perl -pi.beforesubst -e 's,/usr/games/,${PREFIX}/bin/,g' ${WRKSRC}/debian/*.desktop

post-install:
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/ufoai
	${INSTALL_DATA} ${WRKSRC}/LICENSES ${PREFIX}/share/ufoai
	${INSTALL_MAN} ${WRKSRC}/debian/*.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/debian/*.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/debian/*.xpm ${PREFIX}/share/pixmaps
	cd ${WRKSRC}/radiant && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/ufoai/radiant/{}" \;
	cd ${WRKSRC}/radiant && find * -type f -mindepth 1 -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/ufoai/radiant/{}" \;
	${INSTALL_DATA} ${WRKSRC}/radiant/*.xml \
		${PREFIX}/share/ufoai/radiant/

.include <bsd.port.mk>
.if ${PROPERTIES:Mclang}
MAKE_ENV += USE_CLANG=1
.endif
