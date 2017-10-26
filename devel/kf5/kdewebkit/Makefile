# $OpenBSD: Makefile,v 1.7 2017/10/26 07:53:23 rsadowski Exp $

COMMENT =	integration of the HTML rendering engine WebKit into KDE
DISTNAME =	kdewebkit-${VERSION}

SHARED_LIBS =	KF5WebKit		3.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Parts
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5Xml m

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		x11/qt5/qtwebkit

BUILD_DEPENDS =	devel/gettext-tools


.include <bsd.port.mk>
