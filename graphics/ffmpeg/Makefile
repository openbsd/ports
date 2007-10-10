# $OpenBSD: Makefile,v 1.31 2007/10/10 07:59:32 aanriot Exp $

COMMENT=	audio/video converter and streamer with bktr(4) support

DISTNAME=		ffmpeg-svn-20070910
PKGNAME=		${DISTNAME:S/-svn//}p0
SHARED_LIBS=		avutil		4.0 \
			avcodec		10.0 \
			avformat	10.0 \
			postproc	10.0

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
LIBavcodec_EXTRALIBS=-lavutil -lm -lz -L${LOCALBASE}/lib -lfaac -lfaad -lmp3lame -lvorbis -lvorbisenc -la52 -ltheora -lx264 -pthread
LIBavformat_EXTRALIBS=-lavutil -lavcodec -lossaudio -lm -L${LOCALBASE}/lib -logg
LIBpostproc_EXTRALIBS=-lavutil

# configure wants a directory it can execute files in 
WRKTMP=			${WRKDIR}/tmp

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--cc=${CC} \
			--disable-debug \
			--disable-opts \
			--enable-pp \
			--enable-gpl \
			--enable-pthreads \
			--enable-liba52 \
			--enable-libfaac \
			--enable-libfaad \
			--enable-libmp3lame \
			--enable-libogg \
			--enable-libtheora \
			--enable-libvorbis \
			--enable-libx264 \
			--enable-x11grab \
			--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include"

CONFIGURE_ENV+=		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
			LIBavcodec_EXTRALIBS="${LIBavcodec_EXTRALIBS}" \
			LIBavformat_EXTRALIBS="${LIBavformat_EXTRALIBS}" \
			LIBpostproc_EXTRALIBS="${LIBpostproc_EXTRALIBS}" \
			TMPDIR=${WRKTMP} \
			CPPFLAGS="-I${X11BASE}/include"

MAKE_FLAGS=		LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION) \
			LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
			LIBavcodec_EXTRALIBS="-L${WRKBUILD}/libavutil ${LIBavcodec_EXTRALIBS}" \
			LIBavformat_EXTRALIBS="-L${WRKBUILD}/libavutil -L${WRKBUILD}/libavcodec ${LIBavformat_EXTRALIBS}" \
			LIBpostproc_EXTRALIBS="-L${WRKBUILD}/libavutil ${LIBpostproc_EXTRALIBS}"

FAKE_FLAGS=		DESTDIR=${WRKINST} \
			LDCONFIG=true \
			LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION)

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
