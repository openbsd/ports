COMMENT =	Kio slave for accessing audio CDs
DISTNAME =	audiocd-kio-${VERSION}
PKGNAME =	audiocd-kio-kf5-${VERSION}
CATEGORIES =	devel audio

SHARED_LIBS +=  audiocdplugins            3.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} FLAC GL KCddb6 KCompactDisc6 KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Qml Qt6Widgets cdda_interface cdda_paranoia
WANTLIB += m ogg vorbis vorbisenc vorbisfile

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libogg \
		audio/libvorbis \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		x11/kde-applications/kf6-libkcddb>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kf6-libkcompactdisc>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

.include <bsd.port.mk>
