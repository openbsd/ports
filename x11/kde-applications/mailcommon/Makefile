# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 18:50:20 rsadowski Exp $

COMMENT =	KDE PIM common mail library
DISTNAME =	mailcommon-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5MailCommon       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiWidgets KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5I18n
WANTLIB += KF5IMAP KF5IconThemes KF5IdentityManagement KF5ItemModels
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Libkdepim KF5LibkdepimAkonadi KF5Libkleo KF5MailImporter
WANTLIB += KF5MailTransport KF5MessageComposer KF5MessageCore
WANTLIB += KF5MessageViewer KF5Mime KF5MimeTreeParser KF5PimCommon
WANTLIB += KF5PimCommonAkonadi KF5PimTextEdit KF5Service KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5TemplateParser KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

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
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/mailimporter \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

pre-configure:
	find ${WRKSRC} -type f \( -name \*.cpp -o -name \*.h \) -exec \
		sed -i -e 's,#include <phonon,#include <phonon4qt5/phonon,g' {} +

.include <bsd.port.mk>
