# $OpenBSD: Makefile,v 1.50 2009/09/02 11:50:56 sthen Exp $

COMMENT=	audio/video converter and streamer with bktr(4) support

V=			20080620
DISTNAME=		ffmpeg-svn-${V}
PKGNAME=		ffmpeg-${V}p12
SHARED_LIBS=		avutil		6.0 \
			avcodec		13.1 \
			avformat	12.0 \
			postproc	12.0 \
			avdevice	2.0 \
			swscale		1.0

CATEGORIES=		graphics multimedia

HOMEPAGE=		http://ffmpeg.mplayerhq.hu/

# GPL
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# only available through SVN
MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

BUILD_DEPENDS=		::textproc/texi2html
LIB_DEPENDS=		SDL.>=4::devel/sdl \
			faac.>=1::audio/faac \
			faad.>=2::audio/faad \
			mp3lame.>=0.1::audio/lame \
			vorbis.>=4.0,vorbisenc.>=2.0::audio/libvorbis \
			a52::audio/liba52 \
			x264.>=3::multimedia/x264 \
			theora::multimedia/libtheora \
			schroedinger-1.0::multimedia/schroedinger \
			Imlib2::graphics/imlib2 \
			bz2.>=10::archivers/bzip2

WANTLIB=		X11 Xext c freetype m ogg oil-0.3 ossaudio pthread z

USE_X11=		Yes
USE_GMAKE=		Yes

# libswscale/swscale_template.c will not compile without this.
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=-fomit-frame-pointer
.endif

# inter-library dependencies for the current configuration
LIBavutil_EXTRALIBS=-lm
LIBavcodec_EXTRALIBS=-L${LOCALBASE}/lib -lfaac -lfaad -lmp3lame -lvorbis -lvorbisenc -la52 -lschroedinger-1.0 -loil-0.3 -ltheora -logg -lx264 -lz -lm -pthread -Wl,-rpath,${LOCALBASE}/lib 
LIBavformat_EXTRALIBS=-L${LOCALBASE}/lib -lbz2 -lm -Wl,-rpath,${LOCALBASE}/lib
LIBpostproc_EXTRALIBS=-lm
LIBavdevice_EXTRALIBS=-L${X11BASE}/lib -lX11 -lXext -lossaudio -lm -Wl,-rpath,${LOCALBASE}/lib -Wl,-rpath,${X11BASE}/lib
LIBswscale_EXTRALIBS=-lm

# configure wants a directory it can execute files in 
WRKTMP=			${WRKDIR}/tmp

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--cc=${CC} \
			--mandir=${PREFIX}/man \
			--disable-debug \
			--disable-optimizations \
			--enable-gpl \
			--enable-pthreads \
			--enable-postproc \
			--enable-swscale \
			--enable-liba52 \
			--enable-libfaac \
			--enable-libfaad \
			--enable-libmp3lame \
			--enable-libschroedinger \
			--enable-libtheora \
			--enable-libvorbis \
			--enable-libx264 \
			--enable-x11grab \
			--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
			--disable-decoder=cavs \
			--disable-altivec \
			--disable-armv6 \
			--disable-armvfp \
			--disable-iwmmxt \
			--disable-neon

CONFIGURE_ENV+=		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
			LIBavcodec_EXTRALIBS="${LIBavcodec_EXTRALIBS}" \
			LIBavformat_EXTRALIBS="${LIBavformat_EXTRALIBS}" \
			LIBpostproc_EXTRALIBS="${LIBpostproc_EXTRALIBS}" \
			LIBavdevice_EXTRALIBS="${LIBavdevice_EXTRALIBS}" \
			LIBswscale_EXTRALIBS="${LIBswscale_EXTRALIBS}" \
			TMPDIR=${WRKTMP} \
			CPPFLAGS="-I${X11BASE}/include"

VERSION_FLAGS=		libavutil_VERSION=$(LIBavutil_VERSION) \
			libavcodec_VERSION=$(LIBavcodec_VERSION) \
			libavformat_VERSION=$(LIBavformat_VERSION) \
			libpostproc_VERSION=$(LIBpostproc_VERSION) \
			libavdevice_VERSION=$(LIBavdevice_VERSION) \
			libswscale_VERSION=${LIBswscale_VERSION}

MAKE_FLAGS=		${VERSION_FLAGS} \
			LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
			LIBavcodec_EXTRALIBS="-lavutil ${LIBavcodec_EXTRALIBS}" \
			LIBavformat_EXTRALIBS="-lavutil -lavcodec ${LIBavformat_EXTRALIBS}" \
			LIBpostproc_EXTRALIBS="-lavutil ${LIBpostproc_EXTRALIBS}" \
			LIBavdevice_EXTRALIBS="-lavutil -lavformat ${LIBavdevice_EXTRALIBS}" \
			LIBswscale_EXTRALIBS="-lavutil ${LIBswscale_EXTRALIBS}"

FAKE_FLAGS=		${VERSION_FLAGS} \
			LDCONFIG=true

.ifdef DEBUG
CONFIGURE_ARGS+=	--disable-stripping
.endif

ALL_TARGET=		all tools/qt-faststart
# regression tests incompatible with libswscale
#REGRESS_TARGET=	codectest
NO_REGRESS=		Yes

pre-configure:
	-mkdir ${WRKTMP}

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/qt-faststart ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
.for doc in faq ffmpeg-doc ffplay-doc ffserver-doc hooks
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/doc/ffserver.conf \
		${PREFIX}/share/examples/ffmpeg

.include <bsd.port.mk>
