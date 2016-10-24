# $OpenBSD: Makefile,v 1.15 2016/10/24 01:53:37 jeremy Exp $

BROKEN-hppa =	../../include/mednafen/state.h:21:7: error: 'exception_ptr' in namespace 'std' does not name a type
COMMENT =	emulates numerous game consoles

V =		0.9.39.2
DISTNAME =	mednafen-${V}

CATEGORIES =	emulators games
HOMEPAGE =	http://mednafen.fobby.net/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://mednafen.fobby.net/releases/files/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext gcc4

WANTLIB += SDL c m pthread sndfile sndio usbhid z
WANTLIB += FLAC ogg vorbis vorbisenc

USE_GMAKE =	Yes
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS =	audio/libsndfile \
		devel/sdl
		
WRKDIST =	${WRKDIR}/mednafen

USE_WXNEEDED =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS =	--disable-alsa \
			--disable-rpath \
			--disable-jack \
			--with-x \
			--with-gnu-ld

# this intrinsic is not supported with our old gcc
CONFIGURE_ARGS +=	--disable-altivec

pre-configure:
	sed -i 's/^__inline//' ${WRKDIST}/src/quicklz/quicklz.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mednafen
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/mednafen/

.include <bsd.port.mk>
