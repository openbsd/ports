COMMENT =	KDE FFmpeg-based thumbnail generator for video files
DISTNAME =	ffmpegthumbs-${VERSION}
PKGNAME =	kf6-ffmpegthumbs-${VERSION}
CATEGORIES =	multimedia

WANTLIB += ${COMPILER_LIBCXX} GL KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6CoreAddons KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets avcodec avfilter avformat
WANTLIB += avutil m swscale

# build depends but there are no translations
MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/solid \
		devel/kf6/kwidgetsaddons \
		graphics/ffmpeg

.include <bsd.port.mk>
