# $OpenBSD: Makefile,v 1.7 2018/04/26 10:16:46 fcambus Exp $

COMMENT =	console-based OPL2 audio player

V =		1.8
DISTNAME =	adplay-${V}

CATEGORIES =	audio

HOMEPAGE =	https://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL adplug binio c iconv m pthread sndio ${COMPILER_LIBCXX} usbhid

MASTER_SITES =	https://github.com/adplug/adplay-unix/releases/download/v${V}/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	audio/adplug \
		devel/libbinio \
		devel/sdl

CXXFLAGS +=	-I${LOCALBASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-output-ao \
		 --disable-output-esound \
		 --disable-output-oss \
		 --disable-output-alsa

post-patch:
	rm ${WRKSRC}/src/getopt.h

.include <bsd.port.mk>
