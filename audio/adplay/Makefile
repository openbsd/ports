# $OpenBSD: Makefile,v 1.2 2017/04/10 11:45:22 sthen Exp $

COMMENT =	console-based OPL2 audio player

DISTNAME =	adplay-1.7

CATEGORIES =	audio

HOMEPAGE =	http://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL adplug binio c iconv m pthread sndio ${LIBCXX} usbhid

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=adplug/}

LIB_DEPENDS =	audio/adplug \
		devel/libbinio \
		devel/sdl

CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-output-ao \
		 --disable-output-esound \
		 --disable-output-oss \
		 --disable-output-alsa

post-patch:
	rm ${WRKSRC}/src/getopt.h

.include <bsd.port.mk>
