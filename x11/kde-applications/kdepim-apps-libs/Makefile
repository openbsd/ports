# $OpenBSD: Makefile,v 1.3 2020/09/07 14:49:17 rsadowski Exp $

COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-apps-libs-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5FollowupReminder         1.0 # 5.13.2
SHARED_LIBS +=  KF5KaddressbookGrantlee     1.0 # 5.13.2
SHARED_LIBS +=  KF5KaddressbookImportExport 1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiWidgets KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5ContactEditor KF5Contacts KF5CoreAddons KF5GrantleeTheme
WANTLIB += KF5I18n KF5ItemModels KF5KIOCore KF5Libkleo KF5PimCommon
WANTLIB += KF5Service KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml gpgmepp m qgpgme


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
		x11/grantlee-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/libkleo \
		x11/kde-applications/pimcommon \
		x11/kde-applications/akonadi-contacts

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
