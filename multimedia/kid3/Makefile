# $OpenBSD: Makefile,v 1.1.1.1 2020/10/30 20:40:53 zhuk Exp $

COMMENT =	multimedia files tag editor
DISTNAME =	kid3-3.8.4
CATEGORIES =	multimedia x11
HOMEPAGE =	https://kid3.kde.org/

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5KIOCore KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Qml Qt5Quick Qt5Widgets Qt5Xml c chromaprint
WANTLIB += gstreamer-1.0 id3 m ogg readline tag vorbis vorbisfile z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kid3/}
EXTRACT_SUFX =		.tar.gz

# Python is only needed for tests, but KDE Frameworks depend on it anyway
MODULES =		devel/kf5 lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/kf5/kdoctools \
			textproc/docbook-xsl

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-bad \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/flac \
			audio/id3lib \
			audio/libvorbis \
			audio/taglib \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kio \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			multimedia/gstreamer1/core \
			x11/qt5/qtdeclarative \
			x11/qt5/qtmultimedia

CONFIGURE_ARGS =	-DWITH_DOCBOOKDIR=${LOCALBASE}/share/xsl/docbook

post-install:
	rm -R ${PREFIX}/share/man

.include <bsd.port.mk>
