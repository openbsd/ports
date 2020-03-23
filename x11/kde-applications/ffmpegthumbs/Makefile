# $OpenBSD: Makefile,v 1.6 2020/03/23 18:01:15 rsadowski Exp $

COMMENT =	KDE FFmpeg-based thumbnail generator for video files
DISTNAME =	ffmpegthumbs-${VERSION}
PKGNAME =	ffmpegthumbs-kf5-${VERSION}
CATEGORIES =	multimedia

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml avcodec avfilter
WANTLIB += avformat avutil m swscale

MODULES +=	x11/kde-applications

# build depends but there are no translations
MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		graphics/ffmpeg

.include <bsd.port.mk>
