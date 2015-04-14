# $OpenBSD: Makefile,v 1.20 2015/04/14 18:15:57 landry Exp $

BROKEN-hppa =	ICE on moc_qtsingleapplication.cxx
BROKEN-powerpc = libmscore/pitchspelling.h:56:42: error: enumerator value -1 is too large for underlying type 'char'


V =		2.0.0
COMMENT =	WYSIWYG music notation software (MuseScore)
DISTNAME =	MuseScore-${V}
PKGNAME =	musescore-${V}
REVISION =	1
EXTRACT_SUFX =	.zip
CATEGORIES =	audio x11

SHARED_ONLY =	Yes

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =	http://musescore.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Declarative Qt5Designer Qt5Gui
WANTLIB += Qt5Help Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Script Qt5ScriptTools Qt5Sql
WANTLIB += Qt5Svg Qt5Test Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += Qt5Xml Qt5XmlPatterns c m ogg portaudio pthread sndfile
WANTLIB += vorbis vorbisfile z

MASTER_SITES =	http://ftp.osuosl.org/pub/musescore/releases/MuseScore-2.0/

MODULES =	devel/cmake \
		x11/qt5
# pch confuses Ninja
USE_NINJA =	No

# ICE building moc_qtsingleapplication.cxx with base gcc 4.2.1 on amd64.
# possible problems with ppc. unsure about other arch.
MODULES +=		gcc4
MODGCC4_ARCHS +=	*
MODGCC4_LANGS +=	c++

BUILD_DEPENDS =	audio/lame \
		misc/findutils

LIB_DEPENDS =	audio/portaudio-svn \
		audio/libsndfile>=1.0.25p0

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DBUILD_JACK=OFF

NO_TEST =	Yes

post-install:
.for i in 1024 128 16 2048 24 32 48 512 64 96
	@cd ${PREFIX}/share/icons/hicolor/${i}x${i}/apps \
		&& mv musescore-icon-round-${i}.png musescore.png
.endfor

.include <bsd.port.mk>
