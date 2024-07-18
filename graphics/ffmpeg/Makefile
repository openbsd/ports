COMMENT=	audio/video converter and streamer

V=		4.4.4
DISTNAME=	ffmpeg-${V}
EPOCH=		1
REVISION=	4
CATEGORIES=	graphics multimedia
SITES=		https://ffmpeg.org/releases/
EXTRACT_SUFX=	.tar.xz

USE_NOBTCFI-amd64=	Yes

SHARED_LIBS=	avcodec		25.0 \
		avdevice	13.0 \
		avfilter	11.0 \
		avformat	22.0 \
		avutil		15.0 \
		postproc	19.0 \
		swresample	4.0 \
		swscale		7.0

HOMEPAGE=	https://ffmpeg.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 and GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=	SDL2 X11 Xext Xv aom ass bz2 c crypto dav1d fontconfig
WANTLIB+=	freetype fribidi gsm iconv lzma m mp3lame opus
WANTLIB+=	pthread sndio speex ssl theoradec theoraenc v4l2
WANTLIB+=	vorbis vorbisenc vpx x264 x265 xcb xcb-shape xcb-shm
WANTLIB+=	xcb-xfixes xml2 xvidcore vidstab z zimg

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

DEBUG_PACKAGES=	${BUILD_PACKAGES}

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
		graphics/zimg \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libass \
		multimedia/libtheora \
		multimedia/libv4l \
		multimedia/libvidstab \
		multimedia/libvpx \
		multimedia/x264 \
		multimedia/x265 \
		multimedia/xvidcore \
		textproc/libxml

# inter-library dependencies for the current configuration
LIBavcodec_EXTRALIBS=-L${LOCALBASE}/lib -laom -ldav1d -lgsm -liconv -llzma -lmp3lame -lopus -lspeex -ltheoradec -ltheoraenc -lvorbis -lvorbisenc -lvpx -lx264 -lx265 -lxvidcore -lm -lz -pthread
LIBavdevice_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -lX11 -lXext -lXv -lxcb-shape -lxcb-shm -lxcb-xfixes -lxcb -lsndio -lv4l2 -lm
LIBavfilter_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -lass -lfontconfig -lfreetype -lfribidi -lvidstab -lm -lz -lzimg -pthread
LIBavformat_EXTRALIBS=-L${LOCALBASE}/lib -lbz2 -lxml2 -lssl -lcrypto -lm -lz
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
		--enable-debug \
		--disable-stripping \
		--disable-indev=jack \
		--disable-outdev=sdl2 \
		--disable-vaapi \
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
		--enable-libzimg \
		--enable-nonfree \
		--enable-openssl \
		--enable-libvidstab \
		--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
		--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		--extra-ldsoflags="${LDLIBFLAGS}" \
		--mandir=${PREFIX}/man \
		--objcc="/usr/bin/false" \
		--optflags="${OPTFLAGS}"

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--disable-asm
.endif
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=--disable-altivec
.endif
.if ${MACHINE_ARCH} == "mips64"  || ${MACHINE_ARCH} == "mips64el"
CONFIGURE_ARGS+=--disable-mipsdsp \
		--disable-mipsdspr2 \
		--disable-mipsfpu \
		--disable-mmi \
		--disable-msa
.endif

CONFIGURE_ENV+=	TERM=${TERM} \
		TMPDIR=${WRKBUILD} \
		X86ASMFLAGS="${DEBUG}"

MAKE_ENV+=	V=1 \
		libavcodec_extralibs="${LIBavcodec_EXTRALIBS}" \
		libavdevice_extralibs="${LIBavdevice_EXTRALIBS}" \
		libavfilter_extralibs="${LIBavfilter_EXTRALIBS}" \
		libavformat_extralibs="${LIBavformat_EXTRALIBS}" \
		libavutil_extralibs="${LIBavutil_EXTRALIBS}" \
		libpostproc_extralibs="${LIBpostproc_EXTRALIBS}" \
		libswresample_extralibs="${LIBswresample_EXTRALIBS}" \
		libswscale_extralibs="${LIBswscale_EXTRALIBS}" \
		libavcodec_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib" \
		libavdevice_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib:${X11BASE}/lib" \
		libavfilter_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib:${X11BASE}/lib" \
		libavformat_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib" \
		libavutil_linkflags="" \
		libpostproc_linkflags="" \
		libswresample_linkflags="" \
		libswscale_linkflags="" \
		libavcodec_requires="libswresample libavutil" \
		libavdevice_requires="libavfilter libswscale libpostproc libavformat libavcodec libswresample libavutil" \
		libavfilter_requires="libswscale libpostproc libavformat libavcodec libswresample libavutil" \
		libavformat_requires="libavcodec libswresample libavutil" \
		libavutil_requires="" \
		libpostproc_requires="libavutil" \
		libswresample_requires="libavutil" \
		libswscale_requires="libavutil"

VERSION_FLAGS=	libavcodec_VERSION=${LIBavcodec_VERSION} \
		libavdevice_VERSION=${LIBavdevice_VERSION} \
		libavfilter_VERSION=${LIBavfilter_VERSION} \
		libavformat_VERSION=${LIBavformat_VERSION} \
		libavutil_VERSION=${LIBavutil_VERSION} \
		libpostproc_VERSION=${LIBpostproc_VERSION} \
		libswresample_VERSION=${LIBswresample_VERSION} \
		libswscale_VERSION=${LIBswscale_VERSION}

MAKE_FLAGS=	${VERSION_FLAGS} \
		LIBavcodec_EXTRALIBS="-lswresample -lavutil ${LIBavcodec_EXTRALIBS}" \
		LIBavdevice_EXTRALIBS="-lavfilter -lswscale -lpostproc -lavformat -lavcodec -lswresample -lavutil ${LIBavdevice_EXTRALIBS}" \
		LIBavfilter_EXTRALIBS="-lswscale -lpostproc -lavformat -lavcodec -lswresample -lavutil ${LIBavfilter_EXTRALIBS}" \
		LIBavformat_EXTRALIBS="-lavcodec -lswresample -lavutil ${LIBavformat_EXTRALIBS}" \
		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
		LIBpostproc_EXTRALIBS="-lavutil ${LIBpostproc_EXTRALIBS}" \
		LIBswresample_EXTRALIBS="-lavutil ${LIBswresample_EXTRALIBS}" \
		LIBswscale_EXTRALIBS="-lavutil ${LIBswscale_EXTRALIBS}"
FAKE_FLAGS=	${VERSION_FLAGS} \
		LDCONFIG=true

ALL_TARGET=	all tools/qt-faststart
TEST_TARGET=	check

.for _l in avutil avfilter avcodec avformat avdevice swscale swresample postproc
TEST_LIB_PATH:=	${TEST_LIB_PATH}:${WRKBUILD}/lib${_l}
.endfor
TEST_ENV+=	LD_LIBRARY_PATH=${TEST_LIB_PATH:C/^://}

HTML_DOCS=	developer faq ffmpeg ffplay ffprobe general libavfilter

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/qt-faststart ${PREFIX}/bin
.for doc in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	mv -f ${PREFIX}/share/ffmpeg/examples/* ${PREFIX}/share/examples/ffmpeg
	-rmdir ${PREFIX}/share/ffmpeg/examples

.include <bsd.port.mk>
