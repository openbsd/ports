# $OpenBSD: Makefile,v 1.3 2006/01/10 11:21:21 espie Exp $

COMMENT=	"audio sample rate conversion library"

DISTNAME=	libsamplerate-0.1.2
SHARED_LIBS=	samplerate	1.1
CATEGORIES=	audio

HOMEPAGE=	http://mega-nerd.com/SRC/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	sndfile.1::audio/libsndfile

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	yes
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gcc-opt \
		--disable-cpu-clip \
		--disable-gcc-pipe \
		--disable-fftw

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsamplerate
	${INSTALL_DATA} ${WRKSRC}/doc/*.css \
	${PREFIX}/share/doc/libsamplerate
	${INSTALL_DATA} ${WRKSRC}/doc/*.png \
	${PREFIX}/share/doc/libsamplerate
	${INSTALL_DATA} ${WRKSRC}/doc/*.html \
	${PREFIX}/share/doc/libsamplerate

.include <bsd.port.mk>
