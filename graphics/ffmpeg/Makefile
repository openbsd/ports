# $OpenBSD: Makefile,v 1.1.1.1 2003/07/19 18:16:34 jolan Exp $

COMMENT=	"audio/video converter and streamer"
DISTNAME=	ffmpeg-20030622
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics
MASTER_SITES=	http://www.videolan.org/pub/videolan/vlc/0.6.0/contrib/

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
CONFIGURE_ARGS+=--cc=${CC} --make=gmake ${CONFIGURE_SHARED}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/{avcodec,common}.h \
		${PREFIX}/include/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libpostproc/postprocess.h \
		${PREFIX}/include/postproc
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libavcodec.a \
		${WRKBUILD}/libavformat/libavformat.a ${PREFIX}/lib
.if !defined(NO_SHARED_LIBS)
	${INSTALL_DATA} ${WRKBUILD}/libavcodec/libavcodec.so \
		${PREFIX}/lib/libavcodec.so.0.0
.endif
	
.include <bsd.port.mk>
