# $OpenBSD: Makefile,v 1.8 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		KDE plugin framework for user interface components
DISTNAME =		kparts-${VERSION}

SHARED_LIBS =		KF5Parts	4.1

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Test Qt5Widgets Qt5Xml m

BUILD_DEPENDS =		devel/gettext-tools
RUN_DEPENDS =		devel/gettext

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kjobwidgets \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
