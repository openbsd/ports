# $OpenBSD: Makefile,v 1.11 2021/11/10 06:37:42 rsadowski Exp $

COMMENT =	KDE FFmpeg-based thumbnail generator for video files
DISTNAME =	ffmpegthumbs-${VERSION}
PKGNAME =	ffmpegthumbs-kf5-${VERSION}
CATEGORIES =	multimedia

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml X11 avcodec avfilter avformat
WANTLIB += avutil m swscale tag

# build depends but there are no translations
MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	audio/taglib \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		graphics/ffmpeg

.include <bsd.port.mk>
