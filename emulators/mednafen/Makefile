# $OpenBSD: Makefile,v 1.21 2017/09/02 21:42:41 jeremy Exp $

BROKEN-hppa =	../../include/mednafen/state.h:21:7: error: 'exception_ptr' in namespace 'std' does not name a type
COMMENT =	emulates numerous game consoles

DISTNAME =	mednafen-0.9.46

CATEGORIES =	emulators games
HOMEPAGE =	https://mednafen.github.io

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/releases/files/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/gettext

WANTLIB += SDL c m pthread sndfile sndio usbhid z
WANTLIB += FLAC ogg vorbis vorbisenc ${COMPILER_LIBCXX}

USE_GMAKE =	Yes
COMPILER =	gcc

LIB_DEPENDS =	audio/libsndfile \
		devel/sdl
		
WRKDIST =	${WRKDIR}/mednafen

USE_WXNEEDED =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread -nopie"
CONFIGURE_ARGS =	--disable-alsa \
			--disable-rpath \
			--disable-jack \
			--with-x \
			--with-gnu-ld

# this intrinsic is not supported with our old gcc
CONFIGURE_ARGS +=	--disable-altivec

pre-configure:
	sed -i.beforesubst 's/^__inline//' ${WRKDIST}/src/quicklz/quicklz.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mednafen
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/mednafen/

.include <bsd.port.mk>
