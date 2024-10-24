COMMENT =	KDE PIM messaging library
DISTNAME =	mimetreeparser-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6MimeTreeParserCore   0.0 # 0.0
SHARED_LIBS +=	KPim6MimeTreeParserWidgets 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6I18n KF6WidgetsAddons
WANTLIB += KPim6Libkleo KPim6Mbox KPim6Mime Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Qml Qt6Widgets assuan gpgme gpgmepp
WANTLIB += m qgpgmeqt6

MODKDE_TRANSLATIONS = yes

RUN_DEPENDS =	devel/kf6/kwallet

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kwallet

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		security/gpgme,-qt \
		security/libassuan \
		x11/kde-applications/kmbox>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
