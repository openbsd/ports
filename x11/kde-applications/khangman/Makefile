# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 09:33:41 rsadowski Exp $

COMMENT =	KDE hangman game
DISTNAME =	khangman-${VERSION}
CATEGORIES =	games education

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KEduVocDocument KF5Attica KF5Auth
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5Declarative KF5I18n KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Package KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Widgets Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/kf5/kdoctools

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkeduvocdocument \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
