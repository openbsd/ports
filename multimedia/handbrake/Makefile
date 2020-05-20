# $OpenBSD: Makefile,v 1.8 2020/05/20 14:57:18 bcallah Exp $

V = 		1.3.2
COMMENT =	open source video transcoder
DISTNAME =	HandBrake-${V}-source
PKGNAME =	handbrake-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	multimedia x11

HOMEPAGE =	https://handbrake.fr/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender aom ass atk-1.0 atk-bridge-2.0
WANTLIB += avcodec avfilter avformat avresample avutil bluray
WANTLIB += bz2 c cairo cairo-gobject crypto dav1d dvdnav dvdread
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsm gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl jansson lzma m mp3lame ogg opus orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png postproc speex ssl swresample swscale theoradec
WANTLIB += theoraenc vorbis vorbisenc vpx x264 x265 xcb xcb-render
WANTLIB += xcb-shm xml2 xvidcore z

MASTER_SITES =	https://github.com/HandBrake/HandBrake/releases/download/${V}/

COMPILER =	base-clang ports-gcc

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/autoconf/${AUTOCONF_VERSION} \
		devel/automake/${AUTOMAKE_VERSION} \
		devel/gettext,-tools \
		devel/libtool \
		textproc/intltool

LIB_DEPENDS =	devel/jansson \
		devel/orc \
		graphics/ffmpeg \
		multimedia/aom \
		multimedia/libbluray \
		multimedia/gstreamer1/plugins-base \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/libvpx \
		multimedia/x264 \
		multimedia/x265 \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/make/configure.py
CONFIGURE_ARGS =	--disable-gtk-update-checks \
			--enable-x265

# Yes, autoconf is called *during* the build but not at configure time...
USE_GMAKE =	Yes
ALL_TARGET =	build
MAKE_ENV =	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
		AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
		MKDIR_P='/bin/mkdir -p'
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libxml2 -D_NO_UPDATE_CHECK" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib -lx265 -liconv"

.if ${MACHINE_ARCH:Mi386}
CFLAGS +=	-msse2
CXXFLAGS +=	-msse2
.endif

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

WRKDIST =	${WRKDIR}/HandBrake-${V}

post-extract:
	ln -s ${WRKSRC}/make/variant/freebsd.defs \
		${WRKSRC}/make/variant/openbsd.defs

post-install:
	ln -s ${TRUEPREFIX}/bin/ghb ${PREFIX}/bin/HandBrake

.include <bsd.port.mk>
