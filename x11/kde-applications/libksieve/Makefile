# $OpenBSD: Makefile,v 1.11 2022/01/05 08:03:02 rsadowski Exp $

COMMENT =	sieve script library
DISTNAME =	libksieve-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5KManageSieve   1.0 # 5.13.2
SHARED_LIBS +=  KF5KSieve         1.0 # 5.13.2
SHARED_LIBS +=  KF5KSieveUi       4.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5IdentityManagement KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Libkdepim KF5MailTransport KF5Mime
WANTLIB += KF5NewStuff KF5NewStuffCore KF5PimCommon KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += X11 m sasl2

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kservice \
		devel/kf5/kwallet\
		devel/kf5/kwidgetsaddons \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		security/cyrus-sasl2 \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/qt5/qtlocation \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
