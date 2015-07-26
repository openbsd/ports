# $OpenBSD: Makefile,v 1.12 2015/07/26 06:08:15 jeremy Exp $

COMMENT =	emulates numerous game consoles

V =		0.9.38.5
DISTNAME =	mednafen-${V}

CATEGORIES =	emulators games
HOMEPAGE =	http://mednafen.sourceforge.net/

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mednafen
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/mednafen/

.include <bsd.port.mk>
