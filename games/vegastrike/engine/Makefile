# $OpenBSD: Makefile,v 1.18 2021/09/19 05:24:30 rsadowski Exp $

COMMENT =		3D space simulator

DISTNAME =		vegastrike-src-${V}
PKGNAME =		vegastrike-${V}
REVISION =		9

WANTLIB += GL GLU OgreMain SDL X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender atk-1.0
WANTLIB += boost_python${MODPY_VERSION:C/\.//g} boost_thread-mt c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glut gobject-2.0 gtk-x11-2.0 iconv intl jpeg m ogg openal pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png pthread ${COMPILER_LIBCXX} util
WANTLIB += vorbis vorbisfile z ${MODPY_WANTLIB} harfbuzz

COMPILER =		base-clang ports-gcc base-gcc

FIX_CRLF_FILES =	src/cmd/unit_jump.h src/cmd/unit_physics.h
PATCHORIG =		.orig.port

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS =		games/vegastrike/data>=${V}
LIB_DEPENDS =		x11/gtk+2 \
			audio/openal \
			devel/boost \
			audio/libvorbis \
			x11/ogre \
			graphics/freeglut \
			devel/sdl


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-python-version=${MODPY_VERSION} \
			--with-png-libs="${LOCALBASE}/lib" \
			--with-png-inc="${LOCALBASE}/include/libpng" \
			--with-jpeg-libs="${LOCALBASE}/lib" \
			--with-openal-libs="${LOCALBASE}/lib" \
			--with-al-inc="${LOCALBASE}/include" \
			--with-vorbis-libs="${LOCALBASE}/lib" \
			--with-vorbis-inc="${LOCALBASE}/include/vorbis" \
			--with-boost=system \
			--disable-cegui \
			--disable-ffmpeg \
			--with-data-dir="${TRUEPREFIX}/share/vegastrike"

CXXFLAGS +=	-Wno-undefined-var-template -Wno-unused-volatile-lvalue \
		-Wno-narrowing

CONFIGURE_ENV =	\
	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	mv ${PREFIX}/objconv ${PREFIX}/share/vegastrike
	mv ${PREFIX}/bin/replace ${PREFIX}/bin/vsreplace

.include <bsd.port.mk>
