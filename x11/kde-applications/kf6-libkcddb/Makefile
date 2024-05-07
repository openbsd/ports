UNLINKED =	kf6
COMMENT =	KDE CDDB library

DISTNAME =	libkcddb-${VERSION}
PKGNAME =	kf6-libkcddb-${VERSION}

CATEGORIES =	devel multimedia

SHARED_LIBS +=	KCddb6                    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6Solid
WANTLIB += KF6WidgetsAddons Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Qml Qt6Widgets m musicbrainz5

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	audio/libmusicbrainz5 \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
