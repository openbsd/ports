# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:49 zhuk Exp $

COMMENT =		KDE framework for managing menu and toolbar actions
DISTNAME =		kxmlgui-${VERSION}

SHARED_LIBS =		KF5XmlGui		1.0

WANTLIB =  KF5Attica KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5GlobalAccel KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/attica \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kglobalaccel \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kitemviews \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

# TODO: The following tests FAILED:
# 5 - kxmlgui_unittest (Failed)

.include <bsd.port.mk>
