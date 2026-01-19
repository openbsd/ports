COMMENT =	KDE FFmpeg-based thumbnail generator for video files
DISTNAME =	ffmpegthumbs-${VERSION}
PKGNAME =	kf6-ffmpegthumbs-${VERSION}
CATEGORIES =	multimedia
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6KIOCore KF6KIOGui KF6Service Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network avcodec avfilter avformat avutil m swscale

# build depends but there are no translations
MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kio \
		devel/kf6/kservice \
		graphics/ffmpeg

.include <bsd.port.mk>
