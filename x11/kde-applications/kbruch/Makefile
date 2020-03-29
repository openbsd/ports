# $OpenBSD: Makefile,v 1.6 2020/03/29 16:44:08 rsadowski Exp $

COMMENT =	KDE calculating fractions practicing app
DISTNAME =	kbruch-${VERSION}
CATEGORIES =	education x11
REVISION =	0

HOMEPAGE =	https://edu.kde.org/kbruch/

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets Qt5Xml c m

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes
MODKDE5_DESKTOP_FILE = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
