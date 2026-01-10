COMMENT =	KDE PIM messaging library
DISTNAME =	mimetreeparser-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6MimeTreeParserCore    1.0 # 0.0
SHARED_LIBS +=	KPim6MimeTreeParserWidgets 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ColorScheme
WANTLIB += KF6ConfigCore KF6I18n KF6WidgetsAddons KPim6Libkleo
WANTLIB += KPim6Mbox KPim6Mime Qt6Core Qt6Gui Qt6Network Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Widgets gpg-error gpgme gpgmepp m qgpgmeqt6

MODKDE_TRANSLATIONS = yes

RUN_DEPENDS =	devel/kf6/kwallet

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kwallet

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/ki18n \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kwidgetsaddons \
		security/qgpgme \
		x11/kde-applications/kmbox>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
