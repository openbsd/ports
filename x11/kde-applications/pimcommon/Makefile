COMMENT =	common libraries for KDE PIM
DISTNAME =	pimcommon-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5PimCommon            0.0 # 0.0
SHARED_LIBS +=  KPim5PimCommonAkonadi     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Attica KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5I18n
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5NewStuffWidgets KF5Purpose KF5PurposeWidgets KF5Service
WANTLIB += KF5Solid KF5TextAutoCorrectionCore KF5TextAutoCorrectionWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui KPim5AkonadiContact
WANTLIB += KPim5AkonadiCore KPim5AkonadiSearchPIM KPim5AkonadiWidgets
WANTLIB += KPim5GrantleeTheme KPim5IMAP KPim5Ldap KPim5Libkdepim
WANTLIB += KPim5Mime KPim5TextEdit Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/purpose \
		devel/kf5/kcmutils \
		textproc/ktextaddons \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/akonadi-search \
		x11/kde-applications/kimap \
		x11/kde-applications/kldap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
