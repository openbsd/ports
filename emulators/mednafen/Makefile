# $OpenBSD: Makefile,v 1.10 2013/11/25 14:16:22 sthen Exp $

COMMENT =	emulates numerous game consoles

V =		0.9.28
DISTNAME =	mednafen-${V}-wip
PKGNAME =	mednafen-${V}
REVISION =	0

CATEGORIES =	emulators games
HOMEPAGE =	http://mednafen.sourceforge.net/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mednafen/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext

WANTLIB += SDL c cdio m pthread sndfile sndio stdc++ usbhid z
WANTLIB += FLAC ogg vorbis vorbisenc

USE_GMAKE =	Yes

LIB_DEPENDS =	audio/libcdio \
		audio/libsndfile \
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
