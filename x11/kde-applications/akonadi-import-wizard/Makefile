# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 19:14:29 rsadowski Exp $

COMMENT =	PIM Akonadi import wizard
DISTNAME =	akonadi-import-wizard-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPimImportWizard       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiWidgets KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5IMAP KF5IdentityManagement
WANTLIB += KF5ItemModels KF5KIOCore KF5Libkdepim KF5Libkleo KF5MailCommon
WANTLIB += KF5MailImporter KF5MailImporterAkonadi KF5MailTransport
WANTLIB += KF5MessageComposer KF5MessageCore KF5MessageViewer
WANTLIB += KF5Mime KF5MimeTreeParser KF5PimCommon KF5PimCommonAkonadi
WANTLIB += KF5PimTextEdit KF5Service KF5Wallet KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/mailimporter \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		x11/kde-applications/mailcommon


.include <bsd.port.mk>
