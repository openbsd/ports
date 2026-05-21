COMMENT =	KDE PIM messaging library
DISTNAME =	mimetreeparser-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6MimeTreeParserCore    2.0 # 0.0
SHARED_LIBS +=	KPim6MimeTreeParserWidgets 1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6CoreAddons KF6I18n KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6WidgetsAddons
WANTLIB += KPim6Libkleo KPim6Mbox KPim6Mime Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6PrintSupport Qt6Qml Qt6Widgets gpg-error
WANTLIB += gpgme gpgmepp m qgpgmeqt6

MODKDE_TRANSLATIONS = yes

RUN_DEPENDS =	devel/kf6/kwallet

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kwallet

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		security/qgpgme \
		x11/kde-applications/kmbox>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
