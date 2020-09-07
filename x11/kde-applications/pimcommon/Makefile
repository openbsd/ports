# $OpenBSD: Makefile,v 1.4 2020/09/07 14:49:29 rsadowski Exp $

COMMENT =	common libraries for KDE PIM
DISTNAME =	pimcommon-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5PimCommon              2.0 # 5.13.3
SHARED_LIBS +=  KF5PimCommonAkonadi       2.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiSearchPIM KF5AkonadiWidgets KF5Archive KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5I18n KF5IMAP KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Ldap
WANTLIB += KF5Libkdepim KF5Mime KF5NewStuff KF5NewStuffCore KF5PimTextEdit
WANTLIB += KF5Purpose KF5PurposeWidgets KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

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
		x11/kde-applications/akonadi-search \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kimap \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/kldap

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
