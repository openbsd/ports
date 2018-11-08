# $OpenBSD: Makefile,v 1.1.1.1 2018/11/08 07:01:56 rsadowski Exp $

COMMENT =	Kio slave for accessing audio CDs
DISTNAME =	audiocd-kio-${VERSION}
PKGNAME =	audiocd-kio-kf5-${VERSION}
CATEGORIES =	devel audio

KDE5 =		Yes

SHARED_LIBS +=  audiocdplugins            0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} FLAC KF5Auth KF5Bookmarks KF5Cddb
WANTLIB += KF5Codecs KF5CompactDisc KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml cdda_interface cdda_paranoia
WANTLIB += m ogg phonon4qt5 vorbis vorbisenc vorbisfile

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/gettext-tools

RUN_DEPENDS =	devel/kf5/kdoctools

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libvorbis \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkcddb \
		x11/kde-applications/libkcompactdisc

.include <bsd.port.mk>
