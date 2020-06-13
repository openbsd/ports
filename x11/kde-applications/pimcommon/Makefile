# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 17:47:30 rsadowski Exp $

COMMENT =	common libraries for KDE PIM
DISTNAME =	pimcommon-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5PimCommon              0.0 # 5.13.3
SHARED_LIBS +=  KF5PimCommonAkonadi       0.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiWidgets KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5IMAP KF5ItemModels KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Libkdepim KF5LibkdepimAkonadi KF5Mime
WANTLIB += KF5NewStuff KF5NewStuffCore KF5PimTextEdit KF5Purpose
WANTLIB += KF5PurposeWidgets KF5Service KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	textproc/libxslt \

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
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
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
