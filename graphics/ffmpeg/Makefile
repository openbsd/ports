# $OpenBSD: Makefile,v 1.24 2007/01/23 09:34:45 robert Exp $

COMMENT=	"audio/video converter and streamer with bktr(4) support"

DISTNAME=		ffmpeg-cvs-20070110
PKGNAME=		${DISTNAME:S/-cvs//}
SHARED_LIBS=		avutil		2.0 \
			avcodec		8.0 \
			avformat	8.0 \
			postproc	8.0 \
			swscale		0.0
CATEGORIES=		graphics multimedia

HOMEPAGE=		http://www.ffmpeg.org/
MAINTAINER=		Nikns Siankin <nikns@secure.lv>

# GPL
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# only available through CVS
MASTER_SITES=		ftp://ftp.secure.lv/pub/distfiles/

BUILD_DEPENDS=		::textproc/texi2html
LIB_DEPENDS=		SDL.>=4::devel/sdl \
			faac::audio/faac \
			faad::audio/faad \
			mp3lame.>=0.1::audio/lame \
			vorbis.>=4.0,vorbisenc.>=2.0::audio/libvorbis

WANTLIB=		X11 Xext c freetype m pthread ossaudio usbhid z

USE_X11=		Yes
USE_GMAKE=		Yes

# It's either this or disable mmx so postprocess_template.c will build.
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=-fomit-frame-pointer
.endif

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--cc=${CC} \
			--disable-opts \
			--enable-a52 \
			--enable-pp \
			--enable-gpl \
			--enable-pthreads \
			--disable-debug \
			--enable-swscaler \
			--enable-faac \
			--enable-faad \
			--enable-mp3lame \
			--enable-libogg \
			--enable-vorbis \
			--extra-ldflags="-lm -L${LOCALBASE}/lib" \
			--extra-cflags=-I${LOCALBASE}/include


MAKE_FLAGS=		LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION) \
			LIBswscale_VERSION=$(LIBswscale_VERSION)

FAKE_FLAGS=		DESTDIR=${WRKINST} \
			LDCONFIG=true \
			LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION) \
			LIBswscale_VERSION=$(LIBswscale_VERSION)

REGRESS_TARGET=		codectest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
.for doc in faq ffmpeg-doc ffplay-doc ffserver-doc hooks
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/doc/ffserver.conf \
		${PREFIX}/share/examples/ffmpeg

.include <bsd.port.mk>
