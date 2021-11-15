# $OpenBSD: Makefile,v 1.4 2021/11/15 07:48:06 rsadowski Exp $

COMMENT =	client for Matrix chat
VERSION =	1.1.1
DISTNAME =	neochat-${VERSION}

REVISION =	2

CATEGORIES=	net

MASTER_SITES =	${MASTER_SITE_KDE:=stable/neochat/${VERSION}/}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5Kirigami2 KF5Notifications
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Widgets
WANTLIB += Qt5Xml QtOlm Quotient c cmark gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl m qt5keychain secret-1

MODULES =	devel/kf5

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kitemmodels \
		devel/kf5/qqc2-desktop-style \
		graphics/kquickimageeditor \
		x11/gtk+3,-guic


BUILD_DEPENDS = devel/gettext,-tools \
		devel/kf5/kitemmodels \
		graphics/kquickimageeditor \
		math/ecm

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kirigami2 \
		devel/kf5/knotifications \
		security/qtkeychain \
		textproc/cmark \
		x11/libqtolm \
		x11/libquotient \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtquickcontrols2

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
