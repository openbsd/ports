# $OpenBSD: Makefile,v 1.1.1.1 2018/11/08 17:37:37 rsadowski Exp $

COMMENT =	KDE FFmpeg-based thumbnail generator for video files
DISTNAME =	ffmpegthumbs-${VERSION}
PKGNAME =	ffmpegthumbs-kf5-${VERSION}
CATEGORIES =	multimedia

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml avcodec avfilter
WANTLIB += avformat avutil m swscale

BUILD_DEPENDS +=devel/gettext-tools

# checked by cmake
LIB_DEPENDS +=	devel/kf5/kconfig \
		devel/kf5/kio \
		devel/kf5/ki18n \
		graphics/ffmpeg

LIB_DEPENDS +=	devel/kf5/kcoreaddons \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kcompletion

.include <bsd.port.mk>
