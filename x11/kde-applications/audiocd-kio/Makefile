COMMENT =	Kio slave for accessing audio CDs
DISTNAME =	audiocd-kio-${VERSION}
PKGNAME =	audiocd-kio-kf5-${VERSION}
CATEGORIES =	devel audio

SHARED_LIBS +=  audiocdplugins            2.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} FLAC KF5Auth KF5AuthCore KF5Cddb
WANTLIB += KF5Codecs KF5CompactDisc KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5KCMUtils
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += cdda_interface cdda_paranoia m ogg vorbis vorbisenc
WANTLIB += vorbisfile

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libvorbis \
		devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		x11/kde-applications/libkcddb \
		x11/kde-applications/libkcompactdisc

.include <bsd.port.mk>
