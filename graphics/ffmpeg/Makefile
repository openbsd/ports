# $OpenBSD: Makefile,v 1.8 2003/12/06 13:43:08 espie Exp $

COMMENT=	"audio/video converter and streamer"
DISTNAME=	ffmpeg-0.4.8
PKGNAME=	ffmpeg-0.4.8p0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ffmpeg/}

HOMEPAGE=	http://ffmpeg.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	"patents"
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes	# Possible to adapt with some work
USE_GMAKE=	Yes

# It's either this or disable mmx so postprocess_template.c will build.
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=-fomit-frame-pointer
.endif

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--cc=${CC} --make=gmake ${CONFIGURE_SHARED} \
		--disable-ffserver --disable-opts --enable-pp

SV=	0.4

pre-configure:
	@perl -pi -e 's|_SV_|${SV}|g' ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ffmpeg ${PREFIX}/bin/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/include/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKSRC}/libavcodec/{avcodec,common}.h \
		${PREFIX}/include/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/libavformat/{avformat.h,avio.h,rtp.h,rtsp.h,rtspcodes.h} \
		${PREFIX}/include/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libpostproc/postprocess.h \
		${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libavcodec.a \
		${WRKBUILD}/libavformat/libavformat.a ${PREFIX}/lib
.if !defined(NO_SHARED_LIBS)
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libavcodec.so.${SV} \
		${PREFIX}/lib/libavcodec.so.${SV}
	${INSTALL_DATA} ${WRKBUILD}/libavformat/libavformat.so.${SV} \
		${PREFIX}/lib/libavformat.so.${SV}
.endif
	
.include <bsd.port.mk>
