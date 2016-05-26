# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:59 zhuk Exp $

COMMENT =	embedding of scripting into KDE applications
DISTNAME =	kross-${VERSION}

SHARED_LIBS =	KF5KrossCore		0.0 # 5.17
SHARED_LIBS +=	KF5KrossUi		0.0 # 5.17

WANTLIB =  KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script
WANTLIB += Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kparts \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
