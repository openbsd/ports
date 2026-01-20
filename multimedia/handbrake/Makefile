COMMENT =	open source video transcoder

# IBT issues in svt-av1
USE_NOBTCFI-amd64 = Yes

V =		1.10.2
REVISION =	1
DISTNAME =	HandBrake-${V}-source
PKGNAME =	handbrake-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	multimedia x11

HOMEPAGE =	https://handbrake.fr/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SvtAv1Enc ass avcodec avfilter avformat
WANTLIB += avutil bluray c dvdnav dvdread gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-4 iconv intl jansson m ogg
WANTLIB += pango-1.0 swresample swscale theoradec theoraenc turbojpeg
WANTLIB += vorbis vorbisenc x264 x265 xml2

SITES =		https://github.com/HandBrake/HandBrake/releases/download/${V}/

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_RUNDEP =	No

# Yes, meson and ninja is called *during* the build but not at configure time...
BUILD_DEPENDS =	devel/libtool \
		devel/meson \
		devel/ninja \
		textproc/intltool

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		converters/libiconv \
		devel/jansson \
		devel/libdvdread \
		graphics/ffmpeg \
		graphics/jpeg \
		multimedia/libass \
		multimedia/libbluray \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/svt-av1 \
		multimedia/x264 \
		multimedia/x265>=4.1 \
		textproc/libxml \
		x11/gtk+4

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/make/configure.py

USE_GMAKE =	Yes
ALL_TARGET =	build
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.if ${MACHINE_ARCH:Mi386}
CFLAGS +=	-msse2
CXXFLAGS +=	-msse2
.endif

WRKDIST =	${WRKDIR}/HandBrake-${V}

post-install:
	ln -s ${TRUEPREFIX}/bin/ghb ${PREFIX}/bin/HandBrake

.include <bsd.port.mk>
