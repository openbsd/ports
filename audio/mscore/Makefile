# $OpenBSD: Makefile,v 1.25 2015/08/25 13:18:24 sthen Exp $

BROKEN-hppa =	ICE on moc_qtsingleapplication.cxx
BROKEN-powerpc = libmscore/pitchspelling.h:56:42: error: enumerator value -1 is too large for underlying type 'char'

V =		2.0.2
COMMENT =	WYSIWYG music notation software (MuseScore)
DISTNAME =	MuseScore-${V}
PKGNAME =	musescore-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	audio x11
REVISION =	0

SHARED_ONLY =	Yes

HOMEPAGE =	http://musescore.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Designer Qt5Gui Qt5Help Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Svg Qt5Test Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += Qt5Xml Qt5XmlPatterns c freetype m ogg portaudio pthread
WANTLIB += sndfile vorbis vorbisfile z

MASTER_SITES =	http://ftp.osuosl.org/pub/musescore/releases/MuseScore-${V}/

MODULES =	devel/cmake \
		x11/qt5
# pch confuses Ninja
USE_NINJA =	No

BUILD_DEPENDS =	audio/lame \
		misc/findutils

LIB_DEPENDS =	audio/portaudio-svn \
		audio/libsndfile>=1.0.25p0

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DBUILD_JACK=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
