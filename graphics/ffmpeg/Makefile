# $OpenBSD: Makefile,v 1.34 2008/01/26 01:56:02 jakemsr Exp $

COMMENT=	audio/video converter and streamer with bktr(4) support

V=			20080118
DISTNAME=		ffmpeg-svn-${V}
PKGNAME=		ffmpeg-${V}
SHARED_LIBS=		avutil		5.0 \
			avcodec		11.0 \
			avformat	11.0 \
			postproc	11.0 \
			avdevice	1.0

CATEGORIES=		graphics multimedia

HOMEPAGE=		http://ffmpeg.mplayerhq.hu/
MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# only available through SVN
MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

BUILD_DEPENDS=		::textproc/texi2html
LIB_DEPENDS=		SDL.>=4::devel/sdl \
			faac::audio/faac \
			faad.>=1::audio/faad \
			mp3lame.>=0.1::audio/lame \
			vorbis.>=4.0,vorbisenc.>=2.0::audio/libvorbis \
			a52::audio/liba52 \
			x264::multimedia/x264 \
			theora::multimedia/libtheora \
			Imlib2::graphics/imlib2

WANTLIB=		X11 Xext c freetype m pthread ogg ossaudio z

USE_X11=		Yes
USE_GMAKE=		Yes

# It's either this or disable mmx so postprocess_template.c will build.
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=-fomit-frame-pointer
.endif

# inter-library dependencies for the current configuration
LIBavutil_EXTRALIBS=-lm
LIBavcodec_EXTRALIBS=-lavutil -L${LOCALBASE}/lib -lfaac -lfaad -lmp3lame -lvorbis -lvorbisenc -la52 -ltheora -logg -lx264 -lz -lm -pthread -Wl,-rpath,${LOCALBASE}/lib 
LIBavformat_EXTRALIBS=-lavutil -lavcodec -lm -Wl,-rpath,${LOCALBASE}/lib
LIBpostproc_EXTRALIBS=-lavutil -lm
LIBavdevice_EXTRALIBS=-lavutil -lavformat -L${X11BASE}/lib -lX11 -lXext -lossaudio -lm -Wl,-rpath,${LOCALBASE}/lib -Wl,-rpath,${X11BASE}/lib

# configure wants a directory it can execute files in 
WRKTMP=			${WRKDIR}/tmp

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--cc=${CC} \
			--mandir=${PREFIX}/man \
			--disable-debug \
			--disable-optimizations \
			--enable-pp \
			--enable-gpl \
			--enable-pthreads \
			--enable-liba52 \
			--enable-libfaac \
			--enable-libfaad \
			--enable-libmp3lame \
			--enable-libtheora \
			--enable-libvorbis \
			--enable-libx264 \
			--enable-x11grab \
			--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
			--disable-decoder=cavs

CONFIGURE_ENV+=		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
			LIBavcodec_EXTRALIBS="${LIBavcodec_EXTRALIBS}" \
			LIBavformat_EXTRALIBS="${LIBavformat_EXTRALIBS}" \
			LIBpostproc_EXTRALIBS="${LIBpostproc_EXTRALIBS}" \
			LIBavdevice_EXTRALIBS="${LIBavdevice_EXTRALIBS}" \
			TMPDIR=${WRKTMP} \
			CPPFLAGS="-I${X11BASE}/include"

MAKE_FLAGS=		LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION) \
			LIBavdevice_VERSION=$(LIBavdevice_VERSION) \
			LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
			LIBavcodec_EXTRALIBS="-L${WRKBUILD}/libavutil ${LIBavcodec_EXTRALIBS}" \
			LIBavformat_EXTRALIBS="-L${WRKBUILD}/libavutil -L${WRKBUILD}/libavcodec ${LIBavformat_EXTRALIBS}" \
			LIBpostproc_EXTRALIBS="-L${WRKBUILD}/libavutil ${LIBpostproc_EXTRALIBS}" \
			LIBavdevice_EXTRALIBS="-L${WRKBUILD}/libavutil -L${WRKBUILD}/libavformat ${LIBavdevice_EXTRALIBS}"

FAKE_FLAGS=		LDCONFIG=true \
			LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION) \
			LIBavdevice_VERSION=$(LIBavdevice_VERSION)

REGRESS_TARGET=		codectest

pre-configure:
	-mkdir ${WRKTMP}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
.for doc in faq ffmpeg-doc ffplay-doc ffserver-doc hooks
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/doc/ffserver.conf \
		${PREFIX}/share/examples/ffmpeg

.include <bsd.port.mk>
