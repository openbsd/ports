# $OpenBSD: Makefile,v 1.27 2019/07/12 20:43:34 sthen Exp $

COMMENT=		software drum machine

DISTNAME=		hydrogen-0.9.7
CATEGORIES=		audio

HOMEPAGE=		http://www.hydrogen-music.org/

SHARED_LIBS=		hydrogen-core-0.9.7	0.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} QtGui QtNetwork QtXml QtXmlPatterns archive c
WANTLIB += lrdf m sndfile sndio z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hydrogen/}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		audio/libsndfile \
			archivers/libarchive \
			textproc/liblrdf

BUILD_DEPENDS=		audio/ladspa

RUN_DEPENDS=		devel/desktop-file-utils

MODULES=		devel/cmake \
			x11/qt4

CONFIGURE_ENV=		LADSPA_PATH=${LOCALBASE}/lib/ladspa

CONFIGURE_ARGS=		-DWANT_ALSA=OFF \
			-DWANT_CPPUNIT=OFF \
			-DWANT_DEBUG=OFF \
			-DWANT_JACK=OFF \
			-DWANT_JACKSESSION=OFF \
			-DWANT_LADSPA=ON \
			-DWANT_LRDF=ON \
			-DWANT_NSMSESSION=OFF \
			-DWANT_PORTAUDIO=OFF \
			-DWANT_PORTMIDI=OFF \
			-DWANT_PULSEAUDIO=OFF \
			-DWANT_SNDIO=ON

NO_TEST=		Yes

post-extract:
	cp ${FILESDIR}/Sndio{Audio,Midi}Driver.h \
		${WRKSRC}/src/core/include/hydrogen/IO
	cp ${FILESDIR}/sndio_{audio,midi}_driver.cpp \
		${WRKSRC}/src/core/src/IO

.include <bsd.port.mk>
