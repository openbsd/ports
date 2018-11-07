# $OpenBSD: Makefile,v 1.1.1.1 2018/11/07 07:01:16 rsadowski Exp $

COMMENT =	CVS GUI for KDE
DISTNAME =	cervisia-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Pty KF5Service
WANTLIB += KF5SonnetUi KF5Su KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kinit \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kio\
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/sonnet \
		devel/kf5/kdesu \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
