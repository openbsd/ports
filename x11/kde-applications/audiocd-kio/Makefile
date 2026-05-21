COMMENT =	Kio slave for accessing audio CDs
DISTNAME =	audiocd-kio-${VERSION}
CATEGORIES =	devel audio

SHARED_LIBS +=  audiocdplugins            3.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} FLAC GL KCddb6 KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6Solid KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets cdda_interface cdda_paranoia m ogg

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libogg \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/solid \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		x11/kde-applications/kf6-libkcddb>=${VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
