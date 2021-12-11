# $OpenBSD: Makefile,v 1.1.1.1 2021/12/11 10:21:15 kn Exp $

COMMENT =		todo management and time tracker

VERSION =		5.0.1
DISTNAME =		ktimetracker-${VERSION}

CATEGORIES =		productivity x11

HOMEPAGE =		https://apps.kde.org/ktimetracker

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# documentation: GFDL 1.2, icons: LGPL 3, source code: GPL 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/ktimetracker/${VERSION}/src/}

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5I18n KF5IdleTime KF5JobWidgets
WANTLIB += KF5KIOCore KF5Notifications KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml X11 c m

MODULES =		lang/python \
			devel/kf5

MODPY_RUNDEP =		No

CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools \
			devel/kf5/kbookmarks \
			devel/kf5/kcompletion \
			devel/kf5/kitemviews \
			devel/kf5/solid \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kdoctools \
			devel/kf5/kbookmarks \
			devel/kf5/kcompletion \
			devel/kf5/kitemviews \
			devel/kf5/solid \
			x11/gtk+3,-guic


LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcalendarcore \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n \
			devel/kf5/kidletime \
			devel/kf5/kio \
			devel/kf5/kjobwidgets \
			devel/kf5/knotifications \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
