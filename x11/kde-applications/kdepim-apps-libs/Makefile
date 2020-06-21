# $OpenBSD: Makefile,v 1.2 2020/06/21 18:12:53 rsadowski Exp $

COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-apps-libs-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5FollowupReminder         0.0 # 5.13.2
SHARED_LIBS +=  KF5KaddressbookGrantlee     0.0 # 5.13.2
SHARED_LIBS +=  KF5KaddressbookImportExport 0.0 # 5.13.2
SHARED_LIBS +=  KF5KdepimDBusInterfaces     0.0 # 5.13.2
SHARED_LIBS +=  KF5SendLater                0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiWidgets KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5ContactEditor KF5Contacts KF5CoreAddons
WANTLIB += KF5GrantleeTheme KF5I18n KF5ItemModels KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Libkleo KF5PimCommon KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/libkleo \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
