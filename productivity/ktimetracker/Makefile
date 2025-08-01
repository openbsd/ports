COMMENT =		todo management and time tracker

VERSION =		6.0.0
DISTNAME =		ktimetracker-${VERSION}
REVISION =		0

CATEGORIES =		productivity x11

HOMEPAGE =		https://apps.kde.org/ktimetracker

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# documentation: GFDL 1.2, icons: LGPL 3, source code: GPL 2.0
PERMIT_PACKAGE =	Yes

#SITES =		${SITE_KDE:=stable/ktimetracker/${VERSION}/src/}
SITES =			https://invent.kde.org/pim/${PKGSTEM}/-/archive/${VERSION}/
EXTRACT_SUFX =		.tar.gz

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6IdleTime KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6SonnetUi KF6StatusNotifierItem KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Core
WANTLIB += Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets
WANTLIB += Qt6Xml X11 c m

MODULES =		devel/kf6

MODPY_RUNDEP =		No

CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf6/extra-cmake-modules \
			devel/kf6/kdoctools \
			devel/kf6/kiconthemes


RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf6/kbookmarks \
			devel/kf6/kcompletion \
			devel/kf6/kdoctools \
			devel/kf6/kitemviews \
			devel/kf6/solid \
			x11/gtk+4,-guic


LIB_DEPENDS =		devel/kf6/kcalendarcore \
			devel/kf6/kcmutils \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kcrash \
			devel/kf6/kdbusaddons \
			devel/kf6/kidletime \
			devel/kf6/kio \
			devel/kf6/kstatusnotifieritem \
			devel/kf6/ktextwidgets \
			devel/kf6/kwindowsystem \
			devel/kf6/kxmlgui

.include <bsd.port.mk>
