# $OpenBSD: Makefile,v 1.4 2003/08/15 14:25:08 jolan Exp $

COMMENT=	"audio/video converter and streamer"
DISTNAME=	ffmpeg-20030813
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics
MASTER_SITES=	http://www.videolan.org/pub/videolan/vlc/0.6.2/contrib/

HOMEPAGE=	http://ffmpeg.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	"patents"
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes	# Possible to adapt with some work
USE_GMAKE=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--cc=${CC} --make=gmake ${CONFIGURE_SHARED} \
		--disable-ffserver

SV=	0.2

pre-configure:
	@perl -pi -e 's|_SV_|${SV}|g' ${WRKSRC}/configure

post-configure:
# -fPIC causes a compilation error on i386
.if ${MACHINE_ARCH} != "i386"
	@perl -pi -e 's|###CFLAGS|CFLAGS|g' ${WRKSRC}/libavcodec/Makefile \
		${WRKSRC}/libavformat/Makefile
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ffmpeg ${PREFIX}/bin/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/include/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/{avcodec,common}.h \
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
