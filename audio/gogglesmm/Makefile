COMMENT =	music collection manager and player

GH_ACCOUNT =	gogglesmm
GH_PROJECT =	gogglesmm
GH_TAGNAME =	1.2.5

CATEGORIES =	audio x11

HOMEPAGE =	https://gogglesmm.github.io/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL GLU ICE SM X11 Xcursor Xext
WANTLIB += Xfixes Xft Xrandr Xrender bz2 c crypto dbus-1 epoxy
WANTLIB += expat fontconfig freetype intl jpeg m ogg opus png
WANTLIB += pulse sndio sqlite3 ssl tag tiff vorbis webp z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/bzip2 \
		audio/flac \
		audio/libogg \
		audio/libvorbis \
		audio/opus \
		audio/pulseaudio \
		audio/taglib>=2.0.2 \
		databases/sqlite3 \
		devel/gettext,-runtime \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff \
		x11/dbus

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS=		-DCMAKE_INSTALL_PREFIX="${PREFIX}"

CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib -L${X11BASE}/lib

NO_TEST =		Yes

.include <bsd.port.mk>
