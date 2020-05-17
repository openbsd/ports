# $OpenBSD: Makefile,v 1.11 2020/05/17 13:37:47 ajacoutot Exp $

BROKEN =	https://github.com/adplug/adplug/issues/112

COMMENT =	console-based OPL2 audio player

V =		1.8
DISTNAME =	adplay-${V}
REVISION =	1

CATEGORIES =	audio

HOMEPAGE =	https://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} SDL2 adplug binio c m samplerate
WANTLIB +=	sndio usbhid

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://github.com/adplug/adplay-unix/releases/download/v${V}/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	audio/adplug \
		devel/libbinio \
		devel/sdl2

CXXFLAGS +=	-I${LOCALBASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-output-ao \
		 --disable-output-esound \
		 --disable-output-oss \
		 --disable-output-alsa \
		 --with-sdl=sdl2

post-patch:
	rm ${WRKSRC}/src/getopt.h

.include <bsd.port.mk>
