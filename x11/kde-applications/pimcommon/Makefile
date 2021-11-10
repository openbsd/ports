# $OpenBSD: Makefile,v 1.11 2021/11/10 06:37:58 rsadowski Exp $

COMMENT =	common libraries for KDE PIM
DISTNAME =	pimcommon-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5PimCommon              2.2 # 5.13.3
SHARED_LIBS +=  KF5PimCommonAkonadi       4.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiSearchPIM KF5AkonadiWidgets KF5Archive KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5GrantleeTheme KF5I18n KF5IMAP KF5ItemModels KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Ldap KF5Libkdepim KF5Mime KF5NewStuff KF5NewStuffCore
WANTLIB += KF5PimTextEdit KF5Purpose KF5PurposeWidgets KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml X11 m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/karchive \
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
