# $OpenBSD: Makefile,v 1.38 2019/01/21 17:00:02 bcallah Exp $

BROKEN-hppa =	ICE on moc_qtsingleapplication.cxx

V =		3.0.1
COMMENT =	WYSIWYG music notation software (MuseScore)
DISTNAME =	MuseScore-${V}
PKGNAME =	musescore-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	audio x11

HOMEPAGE =	https://musescore.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Help Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Svg Qt5Test Qt5Widgets
WANTLIB += Qt5Xml Qt5XmlPatterns c freetype m ogg portaudio pthread
WANTLIB += sndfile vorbis vorbisfile z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	http://ftp.osuosl.org/pub/musescore/releases/MuseScore-${V}/

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	audio/lame \
		misc/findutils

LIB_DEPENDS =	audio/portaudio-svn \
		audio/libsndfile>=1.0.25p0 \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qttools \
		x11/qt5/qtxmlpatterns

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS =-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -Wno-inconsistent-missing-override" \
		-DBUILD_ALSA=OFF \
		-DBUILD_JACK=OFF \
		-DBUILD_PORTMIDI=OFF \
		-DBUILD_PULSEAUDIO=OFF \
		-DBUILD_PCH=OFF \
		-DBUILD_WEBENGINE=OFF \
		-DUSE_SYSTEM_FREETYPE=ON

NO_TEST =	Yes
MAJ_MIN =	${V:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS +=	MAJ_MIN

# Bad zip file...
WRKDIST =	${WRKDIR}

.include <bsd.port.mk>
