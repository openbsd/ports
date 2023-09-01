COMMENT =	addressbook viewer/frontend for KDE
DISTNAME =	kaddressbook-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5AddressbookImportExport 1.0 # 0.0
SHARED_LIBS +=  kaddressbookprivate          5.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5ItemModels KF5JobWidgets KF5KCMUtils KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Parts KF5Prison KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KPim5AkonadiContact KPim5AkonadiCore KPim5AkonadiSearchDebug
WANTLIB += KPim5AkonadiWidgets KPim5ContactEditor KPim5GrantleeTheme
WANTLIB += KPim5IMAP KPim5KontactInterface KPim5Libkdepim KPim5Mime
WANTLIB += KPim5PimCommon KPim5PimCommonAkonadi KPim5TextEdit
WANTLIB += KUserFeedbackCore KUserFeedbackWidgets Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml X11 c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/prison \
		devel/kf5/sonnet \
		productivity/kuserfeedback \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
