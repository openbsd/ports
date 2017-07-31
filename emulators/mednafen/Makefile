# $OpenBSD: Makefile,v 1.20 2017/07/31 21:26:12 brynet Exp $

BROKEN-hppa =	../../include/mednafen/state.h:21:7: error: 'exception_ptr' in namespace 'std' does not name a type
COMMENT =	emulates numerous game consoles

V =		0.9.39.2
DISTNAME =	mednafen-${V}
REVISION =	1

CATEGORIES =	emulators games
HOMEPAGE =	http://mednafen.fobby.net/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://mednafen.fobby.net/releases/files/
EXTRACT_SUFX =	.tar.bz2

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
