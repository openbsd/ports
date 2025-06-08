COMMENT =	multimedia files tag editor
DISTNAME =	kid3-3.9.6
CATEGORIES =	multimedia x11
HOMEPAGE =	https://kid3.kde.org/
REVISION =	0

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6GuiAddons
WANTLIB += KF6KIOCore KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6Widgets Qt6Xml c
WANTLIB += chromaprint gstreamer-1.0 id3 m ogg readline tag vorbis
WANTLIB += vorbisfile z

SITES =			${SITE_SOURCEFORGE:=kid3/}
EXTRACT_SUFX =		.tar.gz

# Python is only needed for tests, but KDE Frameworks depend on it anyway
MODULES =		devel/kf6 lang/python

BUILD_DEPENDS =		devel/kf6/kdoctools \
			textproc/docbook-xsl

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-bad \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/flac \
			audio/id3lib \
			audio/libogg \
			audio/libvorbis \
			audio/taglib \
			devel/kf6/kcolorscheme \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kguiaddons \
			devel/kf6/kio \
			devel/kf6/kwidgetsaddons \
			devel/kf6/kxmlgui \
			multimedia/gstreamer1/core \
			x11/qt6/qtmultimedia

CONFIGURE_ARGS =	-DWITH_DOCBOOKDIR=${LOCALBASE}/share/xsl/docbook \
			-DWITH_QML=OFF

post-install:
	rm -R ${PREFIX}/share/man

.include <bsd.port.mk>
