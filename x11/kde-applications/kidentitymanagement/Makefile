COMMENT =	KDE pim identities
DISTNAME =	kidentitymanagement-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KPim5IdentityManagement   0.0 # 0.0
SHARED_LIBS +=  KPim5IdentityManagementWidgets 1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui KPim5TextEdit Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 m

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		textproc/ktextaddons \
		devel/libinotify \
		x11/kde-applications/kpimtextedit

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
