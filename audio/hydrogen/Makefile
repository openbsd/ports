# $OpenBSD: Makefile,v 1.28 2020/02/22 17:34:35 rapha Exp $

COMMENT=		software drum machine

DISTNAME=		hydrogen-1.0.0-beta1
PKGNAME=		${DISTNAME:S/-beta/beta/}
CATEGORIES=		audio

HOMEPAGE=		http://www.hydrogen-music.org/

SHARED_LIBS=		hydrogen-core-1.0.0	0.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} archive c
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets Qt5Xml Qt5XmlPatterns
WANTLIB += lrdf m rubberband sndfile sndio z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hydrogen/}

LIB_DEPENDS=		audio/libsndfile \
			audio/rubberband \
			archivers/libarchive \
			textproc/liblrdf \
			x11/qt5/qtxmlpatterns

BUILD_DEPENDS=		audio/ladspa \
			devel/cppunit

RUN_DEPENDS=		devel/desktop-file-utils

MODULES=		devel/cmake \
			x11/qt5

CONFIGURE_ENV=		LADSPA_PATH=${LOCALBASE}/lib/ladspa

CONFIGURE_ARGS=		-DWANT_ALSA=OFF \
			-DWANT_CPPUNIT=ON \
			-DWANT_DEBUG=OFF \
			-DWANT_JACK=OFF \
			-DWANT_JACKSESSION=OFF \
			-DWANT_LADSPA=ON \
			-DWANT_LRDF=ON \
			-DWANT_OSC=OFF \
			-DWANT_PORTAUDIO=OFF \
			-DWANT_PORTMIDI=OFF \
			-DWANT_PULSEAUDIO=OFF \
			-DWANT_RUBBERBAND=ON \
			-DWANT_SNDIO=ON

post-extract:
	cp ${FILESDIR}/Sndio{Audio,Midi}Driver.h \
		${WRKSRC}/src/core/include/hydrogen/IO
	cp ${FILESDIR}/sndio_{audio,midi}_driver.cpp \
		${WRKSRC}/src/core/src/IO

do-test:
	cd ${WRKSRC} && ${WRKBUILD}/src/tests/tests

.include <bsd.port.mk>
