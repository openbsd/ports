# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =		KDE icon GUI utility library
DISTNAME =		kiconthemes-${VERSION}

SHARED_LIBS =		KF5IconThemes		0.0

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5ItemViews KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5Xml c m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
