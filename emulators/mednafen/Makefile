# $OpenBSD: Makefile,v 1.27 2019/06/19 04:01:21 jeremy Exp $

BROKEN-hppa =	../../include/mednafen/state.h:21:7: error: 'exception_ptr' in namespace 'std' does not name a type
COMMENT =	emulates numerous game consoles

DISTNAME =	mednafen-1.22.2

CATEGORIES =	emulators games
HOMEPAGE =	https://mednafen.github.io

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}/releases/files/
EXTRACT_SUFX =	.tar.xz

WANTLIB += SDL2 c iconv intl m pthread sndfile sndio usbhid z
WANTLIB += FLAC ogg samplerate vorbis vorbisenc ${COMPILER_LIBCXX}

USE_GMAKE =	Yes
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/libsndfile \
		devel/gettext,-runtime \
		devel/sdl2

WRKDIST =	${WRKDIR}/mednafen

USE_WXNEEDED =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread -nopie"
CONFIGURE_ARGS =	--disable-alsa \
			--disable-rpath \
			--disable-jack \
			--with-gnu-ld

# this intrinsic is not supported with our old gcc
CONFIGURE_ARGS +=	--disable-altivec

pre-configure:
	sed -i.beforesubst 's/^__inline//' ${WRKDIST}/src/quicklz/quicklz.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mednafen
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/mednafen/

.include <bsd.port.mk>
