# $OpenBSD: Makefile,v 1.1.1.1 2019/12/10 18:08:23 rsadowski Exp $

COMMENT =	app template generator for KDE development
DISTNAME =	kapptemplate-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/org.kde.kapptemplate

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

.include <bsd.port.mk>
