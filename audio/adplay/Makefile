# $OpenBSD: Makefile,v 1.5 2017/12/28 16:37:46 jca Exp $

COMMENT =	console-based OPL2 audio player

DISTNAME =	adplay-1.7
REVISION =	1

CATEGORIES =	audio

HOMEPAGE =	http://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL adplug binio c iconv m pthread sndio ${COMPILER_LIBCXX} usbhid

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=adplug/}

LIB_DEPENDS =	audio/adplug \
		devel/libbinio \
		devel/sdl

CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = autoconf
AUTOCONF_VERSION= 2.64

CONFIGURE_ARGS = --disable-output-ao \
		 --disable-output-esound \
		 --disable-output-oss \
		 --disable-output-alsa

post-patch:
	rm ${WRKSRC}/src/getopt.h

.include <bsd.port.mk>
