COMMENT =	open source video transcoder

V =		1.6.1
DISTNAME =	HandBrake-${V}-source
PKGNAME =	handbrake-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	multimedia x11

HOMEPAGE =	https://handbrake.fr/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SvtAv1Enc X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += aom ass atk-1.0 atk-bridge-2.0 atspi avcodec avfilter
WANTLIB += avformat avutil bluray bz2 c cairo cairo-gobject crypto
WANTLIB += dav1d dbus-1 dvdnav dvdread epoxy execinfo expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gsm gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += jansson jpeg lzma m mp3lame ogg opus orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png postproc
WANTLIB += speex ssl swresample swscale theoradec theoraenc turbojpeg
WANTLIB += udfread unibreak vidstab vorbis vorbisenc vpx x264 x265 xcb
WANTLIB += xcb-render xcb-shm xml2 xvidcore z zimg

SITES =		https://github.com/HandBrake/HandBrake/releases/download/${V}/

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/autoconf/${AUTOCONF_VERSION} \
		devel/automake/${AUTOMAKE_VERSION} \
		devel/gettext,-tools \
		devel/libtool \
		textproc/intltool

LIB_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		audio/lame \
		audio/libogg \
		audio/libvorbis \
		audio/opus \
		audio/speex \
		converters/libiconv \
		devel/fribidi \
		devel/harfbuzz \
		devel/jansson \
		devel/libdvdread \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/zimg \
		multimedia/aom \
		multimedia/libass \
		multimedia/libbluray \
		multimedia/gstreamer1/plugins-base \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/libvpx \
		multimedia/svt-av1 \
		multimedia/x264 \
		multimedia/x265 \
		textproc/libxml \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/make/configure.py

# Yes, autoconf is called *during* the build but not at configure time...
USE_GMAKE =	Yes
ALL_TARGET =	build
MAKE_ENV =	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
		AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
		AWK=/usr/bin/awk \
		MKDIR_P='/bin/mkdir -p'
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.if ${MACHINE_ARCH:Mi386}
CFLAGS +=	-msse2
CXXFLAGS +=	-msse2
.endif

CFLAGS+=	-D_NO_UPDATE_CHECK

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

WRKDIST =	${WRKDIR}/HandBrake-${V}

post-install:
	ln -s ${TRUEPREFIX}/bin/ghb ${PREFIX}/bin/HandBrake

.include <bsd.port.mk>
