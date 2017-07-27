# $OpenBSD: Makefile,v 1.5 2017/07/27 09:34:38 sthen Exp $

COMMENT =		interface for media player KParts
DISTNAME =		kmediaplayer-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5MediaPlayer		2.0

WANTLIB =  KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Parts KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui ${COMPILER_LIBCXX} Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml m

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/kf5/kparts \
			devel/kf5/kxmlgui

IS_PORTING_AID =	Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
