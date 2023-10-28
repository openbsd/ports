COMMENT =	KDE FFmpeg-based thumbnail generator for video files
DISTNAME =	ffmpegthumbs-${VERSION}
PKGNAME =	ffmpegthumbs-kf5-${VERSION}
CATEGORIES =	multimedia

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml X11 avcodec avfilter avformat avutil m swscale

# build depends but there are no translations
MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		graphics/ffmpeg

.include <bsd.port.mk>
