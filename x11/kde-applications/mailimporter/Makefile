COMMENT =	KDE PIM mail importer library
DISTNAME =	mailimporter-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5MailImporter         1.0 # 0.0
SHARED_LIBS +=  KPim5MailImporterAkonadi  1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5ItemModels KF5KIOCore KF5Service KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5WidgetsAddons KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5Mime KPim5PimCommon KPim5TextEdit
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kmime \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
