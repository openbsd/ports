# $OpenBSD: Makefile,v 1.53 2010/06/15 10:07:41 sebastia Exp $

COMMENT=	audio/video converter and streamer with bktr(4) support

V=		20100512
DISTNAME=	ffmpeg-svn-${V}
PKGNAME=	ffmpeg-${V}
CATEGORIES=	graphics multimedia
MASTER_SITES=	http://comstyle.com/source/

SHARED_LIBS=	avcodec		14.0 \
		avdevice	3.0 \
		avfilter	1.0 \
		avformat	13.0 \
		avutil		7.0 \
		postproc	13.0 \
		swscale		2.0

HOMEPAGE=	http://ffmpeg.mplayerhq.hu/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 / GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gcc3
MODGCC3_ARCHES=	sparc

WANTLIB=	X11 Xext Xfixes c m ogg oil-0.3 pthread sndio z

BUILD_DEPENDS=	::textproc/texi2html
LIB_DEPENDS=	SDL.>=4::devel/sdl \
		faac.>=1::audio/faac \
		faad.>=2::audio/faad \
		mp3lame.>=0.1::audio/lame \
		vorbis.>=4.0,vorbisenc.>=2.0::audio/libvorbis \
		speex::audio/speex \
		gsm::audio/gsm \
		x264.>=4::multimedia/x264 \
		theora,theoradec,theoraenc::multimedia/libtheora \
		schroedinger-1.0::multimedia/schroedinger \
		bz2.>=10::archivers/bzip2

# inter-library dependencies for the current configuration
LIBavcodec_EXTRALIBS=-L${LOCALBASE}/lib -lfaac -lfaad -lgsm -lm -lmp3lame -logg -loil-0.3 -lschroedinger-1.0 -lspeex -ltheora -lvorbis -lvorbisenc -lx264 -lz -pthread -Wl,-rpath,${LOCALBASE}/lib 
LIBavdevice_EXTRALIBS=-L${X11BASE}/lib -lX11 -lXext -lXfixes -lm -lsndio -Wl,-rpath,${LOCALBASE}/lib -Wl,-rpath,${X11BASE}/lib
LIBavfilter_EXTRALIBS=-lm
LIBavformat_EXTRALIBS=-L${LOCALBASE}/lib -lbz2 -lm -Wl,-rpath,${LOCALBASE}/lib
LIBavutil_EXTRALIBS=-lm
LIBpostproc_EXTRALIBS=-lm
LIBswscale_EXTRALIBS=-lm

# configure wants a directory it can execute files in 
WRKTMP=		${WRKDIR}/tmp

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--cc=${CC} \
		--disable-altivec \
		--disable-armv5te \
		--disable-armv6 \
		--disable-armv6t2 \
		--disable-armvfp \
		--disable-debug \
		--disable-indev=jack \
		--disable-indev=oss \
		--disable-iwmmxt \
		--disable-neon \
		--disable-optimizations \
		--disable-outdev=oss \
		--enable-gpl \
		--enable-libfaac \
		--enable-libfaad \
		--enable-libgsm \
		--enable-libmp3lame \
		--enable-libschroedinger \
		--enable-libspeex \
		--enable-libtheora \
		--enable-libvorbis \
		--enable-libx264 \
		--enable-nonfree \
		--enable-postproc \
		--enable-pthreads \
		--enable-runtime-cpudetect \
		--enable-x11grab \
		--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
		--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		--mandir=${PREFIX}/man

CONFIGURE_ENV+=	LIBavcodec_EXTRALIBS="${LIBavcodec_EXTRALIBS}" \
		LIBavdevice_EXTRALIBS="${LIBavdevice_EXTRALIBS}" \
		LIBavfilter_EXTRALIBS="${LIBavfilter_EXTRALIBS}" \
		LIBavformat_EXTRALIBS="${LIBavformat_EXTRALIBS}" \
		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
		LIBpostproc_EXTRALIBS="${LIBpostproc_EXTRALIBS}" \
		LIBswscale_EXTRALIBS="${LIBswscale_EXTRALIBS}" \
		TMPDIR=${WRKTMP} \
		CPPFLAGS="-I${X11BASE}/include"

VERSION_FLAGS=	libavcodec_VERSION=$(LIBavcodec_VERSION) \
		libavdevice_VERSION=$(LIBavdevice_VERSION) \
		libavfilter_VERSION=$(LIBavfilter_VERSION) \
		libavformat_VERSION=$(LIBavformat_VERSION) \
		libavutil_VERSION=$(LIBavutil_VERSION) \
		libpostproc_VERSION=$(LIBpostproc_VERSION) \
		libswscale_VERSION=${LIBswscale_VERSION}

MAKE_ENV=	V=1

MAKE_FLAGS=	${VERSION_FLAGS} \
		LIBavcodec_EXTRALIBS="-lavutil ${LIBavcodec_EXTRALIBS}" \
		LIBavdevice_EXTRALIBS="-lavcodec -lavformat -lavutil ${LIBavdevice_EXTRALIBS}" \
		LIBavfilter_EXTRALIBS="-lavcodec -lavutil -lswscale ${LIBavfilter_EXTRALIBS}" \
		LIBavformat_EXTRALIBS="-lavcodec -lavutil ${LIBavformat_EXTRALIBS}" \
		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
		LIBpostproc_EXTRALIBS="-lavutil ${LIBpostproc_EXTRALIBS}" \
		LIBswscale_EXTRALIBS="-lavutil ${LIBswscale_EXTRALIBS}"

FAKE_FLAGS=	${VERSION_FLAGS} \
		LDCONFIG=true

.ifdef DEBUG
CONFIGURE_ARGS+=--disable-stripping
.endif

ALL_TARGET=	all tools/qt-faststart
# regression tests incompatible with libswscale
#REGRESS_TARGET=	codectest
NO_REGRESS=	Yes

HTML_DOCS=	developer faq ffmpeg-doc ffplay-doc ffprobe-doc ffserver-doc \
		general libavfilter

post-extract:
	@cp -f ${FILESDIR}/sndio.c ${WRKSRC}/libavdevice

pre-configure:
	@mkdir -p ${WRKTMP}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/qt-faststart ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
.for doc in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	${INSTALL_DATA} ${WRKBUILD}/doc/ffserver.conf \
		${PREFIX}/share/examples/ffmpeg

.include <bsd.port.mk>
