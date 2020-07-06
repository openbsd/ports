# $OpenBSD: Makefile,v 1.204 2020/07/06 07:14:55 ajacoutot Exp $

COMMENT=	audio/video converter and streamer

V=		4.3
DISTNAME=	ffmpeg-${V}
REVISION=	2
EPOCH=		1
CATEGORIES=	graphics multimedia
MASTER_SITES=	https://ffmpeg.org/releases/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	avcodec		24.0 \
		avdevice	12.0 \
		avfilter	9.0 \
		avformat	21.0 \
		avresample	2.0 \
		avutil		14.0 \
		postproc	18.0 \
		swresample	3.0 \
		swscale		7.0

HOMEPAGE=	https://ffmpeg.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 and GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=	SDL2 X11 Xext Xv aom ass bz2 c crypto dav1d fontconfig
WANTLIB+=	freetype fribidi gsm iconv lzma m mp3lame opus
WANTLIB+=	pthread sndio speex ssl theoradec theoraenc v4l2
WANTLIB+=	vorbis vorbisenc vpx x264 x265 xcb xcb-shape xcb-shm
WANTLIB+=	xcb-xfixes xml2 xvidcore z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

BUILD_DEPENDS=	audio/ladspa \
		textproc/texi2html \
		multimedia/frei0r-plugins
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif
LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz \
		audio/lame \
		audio/libvorbis \
		audio/opus \
		audio/speex \
		audio/gsm \
		converters/libiconv \
		devel/sdl2 \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libass \
		multimedia/libtheora \
		multimedia/libv4l \
		multimedia/libvpx \
		multimedia/x264 \
		multimedia/x265 \
		multimedia/xvidcore \
		textproc/libxml

# inter-library dependencies for the current configuration
LIBavcodec_EXTRALIBS=-L${LOCALBASE}/lib -laom -ldav1d -lgsm -liconv -llzma -lmp3lame -lopus -lspeex -ltheoradec -ltheoraenc -lvorbis -lvorbisenc -lvpx -lx264 -lx265 -lxvidcore -lm -lz -pthread
LIBavdevice_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -lX11 -lXext -lXv -lxcb-shape -lxcb-shm -lxcb-xfixes -lxcb -lsndio -lv4l2 -lm
LIBavfilter_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -lass -lfontconfig -lfreetype -lfribidi -lm -lz -pthread
LIBavformat_EXTRALIBS=-L${LOCALBASE}/lib -lbz2 -lxml2 -lssl -lcrypto -lm -lz
LIBavresample_EXTRALIBS=-lm
LIBavutil_EXTRALIBS=-lm -pthread
LIBpostproc_EXTRALIBS=-lm
LIBswresample_EXTRALIBS=-lm
LIBswscale_EXTRALIBS=-lm

.if ${MACHINE_ARCH} == i386
LDLIBFLAGS+=	-Wl,-znotext
.endif

OPTFLAGS=	${CFLAGS}

# until the system headers are fixed properly.
OPTFLAGS+=	-Wno-redundant-decls

FIX_EXTRACT_PERMISSIONS=	Yes
SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--enable-shared \
		--arch=${MACHINE_ARCH} \
		--cc=${CC} \
		--disable-altivec \
		--disable-debug \
		--disable-indev=jack \
		--disable-indev=oss \
		--disable-mipsdsp \
		--disable-mipsdspr2 \
		--disable-mipsfpu \
		--disable-mmi \
		--disable-msa \
		--disable-outdev=oss \
		--disable-outdev=sdl2 \
		--enable-avresample \
		--enable-fontconfig \
		--enable-frei0r \
		--enable-gpl \
		--enable-ladspa \
		--enable-libaom \
		--enable-libass \
		--enable-libdav1d \
		--enable-libfreetype \
		--enable-libfribidi \
		--enable-libgsm \
		--enable-libmp3lame \
		--enable-libopus \
		--enable-libspeex \
		--enable-libtheora \
		--enable-libv4l2 \
		--enable-libvorbis \
		--enable-libvpx \
		--enable-libx264 \
		--enable-libx265 \
		--enable-libxml2 \
		--enable-libxvid \
		--enable-nonfree \
		--enable-openssl \
		--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
		--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		--extra-ldsoflags="${LDLIBFLAGS}" \
		--mandir=${PREFIX}/man \
		--objcc="/usr/bin/false" \
		--optflags="${OPTFLAGS}"

CONFIGURE_ENV+=	TERM=${TERM} \
		TMPDIR=${WRKBUILD}

MAKE_ENV+=	V=1 \
		libavcodec_extralibs="${LIBavcodec_EXTRALIBS}" \
		libavdevice_extralibs="${LIBavdevice_EXTRALIBS}" \
		libavfilter_extralibs="${LIBavfilter_EXTRALIBS}" \
		libavformat_extralibs="${LIBavformat_EXTRALIBS}" \
		libavresample_extralibs="${LIBavresample_EXTRALIBS}" \
		libavutil_extralibs="${LIBavutil_EXTRALIBS}" \
		libpostproc_extralibs="${LIBpostproc_EXTRALIBS}" \
		libswresample_extralibs="${LIBswresample_EXTRALIBS}" \
		libswscale_extralibs="${LIBswscale_EXTRALIBS}" \
		libavcodec_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib" \
		libavdevice_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib:${X11BASE}/lib" \
		libavfilter_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib:${X11BASE}/lib" \
		libavformat_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib" \
		libavresample_linkflags="" \
		libavutil_linkflags="" \
		libpostproc_linkflags="" \
		libswresample_linkflags="" \
		libswscale_linkflags="" \
		libavcodec_requires="libswresample libavutil" \
		libavdevice_requires="libavfilter libswscale libpostproc libavformat libavcodec libswresample libavresample libavutil" \
		libavfilter_requires="libswscale libpostproc libavformat libavcodec libswresample libavresample libavutil" \
		libavformat_requires="libavcodec libswresample libavutil" \
		libavresample_requires="libavutil" \
		libavutil_requires="" \
		libpostproc_requires="libavutil" \
		libswresample_requires="libavutil" \
		libswscale_requires="libavutil"

VERSION_FLAGS=	libavcodec_VERSION=${LIBavcodec_VERSION} \
		libavdevice_VERSION=${LIBavdevice_VERSION} \
		libavfilter_VERSION=${LIBavfilter_VERSION} \
		libavformat_VERSION=${LIBavformat_VERSION} \
		libavresample_VERSION=${LIBavresample_VERSION} \
		libavutil_VERSION=${LIBavutil_VERSION} \
		libpostproc_VERSION=${LIBpostproc_VERSION} \
		libswresample_VERSION=${LIBswresample_VERSION} \
		libswscale_VERSION=${LIBswscale_VERSION}

MAKE_FLAGS=	${VERSION_FLAGS} \
		LIBavcodec_EXTRALIBS="-lswresample -lavutil ${LIBavcodec_EXTRALIBS}" \
		LIBavdevice_EXTRALIBS="-lavfilter -lswscale -lpostproc -lavformat -lavcodec -lswresample -lavresample -lavutil ${LIBavdevice_EXTRALIBS}" \
		LIBavfilter_EXTRALIBS="-lswscale -lpostproc -lavformat -lavcodec -lswresample -lavresample -lavutil ${LIBavfilter_EXTRALIBS}" \
		LIBavformat_EXTRALIBS="-lavcodec -lswresample -lavutil ${LIBavformat_EXTRALIBS}" \
		LIBavresample_EXTRALIBS="-lavutil ${LIBavresample_EXTRALIBS}" \
		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
		LIBpostproc_EXTRALIBS="-lavutil ${LIBpostproc_EXTRALIBS}" \
		LIBswresample_EXTRALIBS="-lavutil ${LIBswresample_EXTRALIBS}" \
		LIBswscale_EXTRALIBS="-lavutil ${LIBswscale_EXTRALIBS}"
FAKE_FLAGS=	${VERSION_FLAGS} \
		LDCONFIG=true

.ifdef DEBUG
CONFIGURE_ARGS+=--disable-stripping
.endif

ALL_TARGET=	all tools/qt-faststart
TEST_TARGET=	check

HTML_DOCS=	developer faq ffmpeg ffplay ffprobe general libavfilter

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/qt-faststart ${PREFIX}/bin
.for doc in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor

.include <bsd.port.mk>
