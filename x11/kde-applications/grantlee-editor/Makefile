# $OpenBSD: Makefile,v 1.11 2021/11/10 06:37:42 rsadowski Exp $

COMMENT =	utilities and tools to manage themes in KDE PIM applications
DISTNAME =	grantlee-editor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  grantleethemeeditor       1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiWidgets KF5Archive KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5GrantleeTheme KF5I18n KF5ItemModels
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Libkleo
WANTLIB += KF5MessageCore KF5MessageViewer KF5Mime KF5MimeTreeParser
WANTLIB += KF5NewStuff KF5NewStuffCore KF5PimCommon KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SyntaxHighlighting KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 assuan c
WANTLIB += gpgme gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/ktexteditor \
		devel/libinotify

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/syntax-highlighting \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

.include <bsd.port.mk>
