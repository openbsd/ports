# $OpenBSD: Makefile,v 1.18 2005/12/31 08:45:56 steven Exp $

COMMENT=	"audio/video converter and streamer with bktr(4) support"
DISTNAME=	FFMpeg-20050413
PKGNAME=	${DISTNAME:L}
SHARED_LIBS=	avcodec		6.0	\
		avformat	6.0	\
		postproc	6.0

CATEGORIES=	graphics x11
MASTER_SITES=	http://www.jakemsr.com/
#		http://mplayerhq.hu/MPlayer/cvs/

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.ffmpeg.org/

MAINTAINER=	Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_DISTFILES_CDROM=	"patents"
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 Xext c m ogg ossaudio pthread usbhid z

BUILD_DEPENDS=	::textproc/texi2html
LIB_DEPENDS=	SDL.2.0::devel/sdl \
		a52.0.0::audio/liba52 \
		mp3lame.0.1::audio/lame \
		vorbis.4.0,vorbisenc.2.0::audio/libvorbis

NO_REGRESS=	Yes	# Possible to adapt with some work
USE_GMAKE=	Yes
USE_X11=	Yes

# It's either this or disable mmx so postprocess_template.c will build.
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=-fomit-frame-pointer
.endif

CONFIGURE_STYLE=simple
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--cc=${CC} \
		--make=${MAKE_PROGRAM} \
		--extra-cflags="-I${LOCALBASE}/include" \
		--extra-ldflags="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		--disable-opts \
		--enable-a52 \
		--enable-pp \
		--enable-mp3lame \
		--enable-libogg \
		--enable-vorbis \
		--enable-gpl \
		--enable-pthreads \
		--disable-debug

MAKE_ENV+=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
MAKE_FLAGS=	SLIBSUF=.so	\
		LIBavcodec_VERSION=$(LIBavcodec_VERSION)	\
		LIBavformat_VERSION=$(LIBavformat_VERSION)	\
		LIBpostproc_VERSION=$(LIBpostproc_VERSION)

# shared libpostproc
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
CONFIGURE_ARGS+=--enable-shared-pp
.endif

post-extract:
	@cp ${FILESDIR}/grab_bsdbktr.c ${WRKSRC}/libavformat/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/ffserver.conf \
		${PREFIX}/share/examples/ffmpeg
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/ffmpeg ${PREFIX}/bin/ffmpeg
	${INSTALL_PROGRAM} ${WRKBUILD}/ffplay ${PREFIX}/bin/ffplay
	${INSTALL_PROGRAM} ${WRKBUILD}/ffserver ${PREFIX}/bin/ffserver
	${INSTALL_DATA_DIR} ${PREFIX}/include/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKSRC}/libavcodec/{avcodec,common,rational,mpegaudio}.h \
		${PREFIX}/include/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/libavformat/{avformat.h,avio.h,rtp.h,rtsp.h,rtspcodes.h} \
		${PREFIX}/include/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libpostproc/postprocess.h \
		${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libavcodec.a \
		${WRKBUILD}/libavformat/libavformat.a ${PREFIX}/lib
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
	${INSTALL_DATA} \
		${WRKBUILD}/libavcodec/libavcodec.so.${LIBavcodec_VERSION} \
		${WRKBUILD}/libavformat/libavformat.so.${LIBavformat_VERSION} \
		${WRKBUILD}/libavcodec/libpostproc/libpostproc.so.${LIBpostproc_VERSION} \
		${PREFIX}/lib
.else
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libpostproc/libpostproc.a \
		${PREFIX}/lib
.endif
	
.include <bsd.port.mk>

