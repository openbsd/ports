COMMENT=		software drum machine

V=			1.0.1
DISTNAME=		hydrogen-$V
CATEGORIES=		audio
REVISION=		0

HOMEPAGE=		http://www.hydrogen-music.org/

SHARED_LIBS=		hydrogen-core-$V	0.0

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

# Disable Doxygen
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

post-extract:
	cp ${FILESDIR}/Sndio{Audio,Midi}Driver.h \
		${WRKSRC}/src/core/include/hydrogen/IO
	cp ${FILESDIR}/sndio_{audio,midi}_driver.cpp \
		${WRKSRC}/src/core/src/IO

post-install:
	cp -rp ${WRKSRC}/data/doc ${PREFIX}/share/doc/hydrogen

do-test:
	cd ${WRKSRC} && ${WRKBUILD}/src/tests/tests

.include <bsd.port.mk>
