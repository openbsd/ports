# $OpenBSD: Makefile,v 1.3 2020/06/24 18:56:34 rsadowski Exp $

COMMENT =	KMail mbox importer
DISTNAME =	mbox-importer-${VERSION}
CATEGORIES =	devel
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiWidgets KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5IMAP KF5IdentityManagement KF5ItemModels
WANTLIB += KF5KIOCore KF5Libkdepim KF5Libkleo KF5MailCommon KF5MailImporter
WANTLIB += KF5MailImporterAkonadi KF5MessageComposer KF5MessageCore
WANTLIB += KF5MessageViewer KF5Mime KF5MimeTreeParser KF5PimCommon
WANTLIB += KF5PimCommonAkonadi KF5PimTextEdit KF5Service KF5WidgetsAddons
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES =	x11/kde-applications

BUILD_DEPENDS =	devel/boost \
		devel/libinotify

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
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
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kmime \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/kde-applications/mailcommon \
		x11/kde-applications/messagelib

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
