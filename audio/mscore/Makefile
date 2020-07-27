# $OpenBSD: Makefile,v 1.54 2020/07/27 15:49:28 visa Exp $

BROKEN-hppa =	ICE on moc_qtsingleapplication.cxx

V =		3.4.2
COMMENT =	WYSIWYG music notation software (MuseScore)
DISTNAME =	MuseScore-${V}
PKGNAME =	musescore-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	audio x11

HOMEPAGE =	https://musescore.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Help
WANTLIB += Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5QuickControls2 Qt5QuickWidgets Qt5Sql Qt5Svg Qt5Test
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns c freetype m ogg portaudio
WANTLIB += sndfile vorbis vorbisfile z

MASTER_SITES =	https://github.com/musescore/MuseScore/releases/download/v${V}/

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	audio/lame \
		misc/findutils

LIB_DEPENDS =	audio/portaudio-svn \
		audio/libsndfile>=1.0.25p0 \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2 \
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
		-DUSE_SYSTEM_FREETYPE=ON \
		-DBUILD_CRASH_REPORTER=OFF \
		-DBUILD_TELEMETRY_MODULE=OFF

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

NO_TEST =	Yes
MAJ_MIN =	${V:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS +=	MAJ_MIN

# Bad zip file...
WRKDIST =	${WRKDIR}

.include <bsd.port.mk>
