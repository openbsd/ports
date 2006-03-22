# $OpenBSD: Makefile,v 1.20 2006/03/22 08:08:42 jakemsr Exp $

COMMENT=	"audio/video converter and streamer with bktr(4) support"

DISTNAME=		ffmpeg-cvs-20060312
PKGNAME=		${DISTNAME:S/-cvs//}p0
SHARED_LIBS=		avutil		1.0 \
			avcodec		7.0 \
			avformat	7.0 \
			postproc	7.0
CATEGORIES=		graphics multimedia

HOMEPAGE=		http://www.ffmpeg.org/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# only available through CVS
MASTER_SITES=		http://www.jakemsr.com/

BUILD_DEPENDS=		::textproc/texi2html
LIB_DEPENDS=		SDL.4::devel/sdl
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
			--disable-debug

MAKE_FLAGS=		LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION)

FAKE_FLAGS=		DESTDIR=${WRKINST} \
			LDCONFIG=true \
			LIBavutil_VERSION=$(LIBavutil_VERSION) \
			LIBavcodec_VERSION=$(LIBavcodec_VERSION) \
			LIBavformat_VERSION=$(LIBavformat_VERSION) \
			LIBpostproc_VERSION=$(LIBpostproc_VERSION)

WRKDIST=		${WRKDIR}/ffmpeg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
.for doc in faq ffmpeg-doc ffplay-doc ffserver-doc hooks
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_DATA} ${WRKBUILD}/doc/ffserver.conf \
		${PREFIX}/share/examples/ffmpeg

.include <bsd.port.mk>
