# $OpenBSD: Makefile,v 1.7 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =		interface for media player KParts
DISTNAME =		kmediaplayer-${VERSION}

SHARED_LIBS =		KF5MediaPlayer		4.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Parts
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml m

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/kf5/kparts \
			devel/kf5/kxmlgui

IS_PORTING_AID =	Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
