# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 10:05:03 rsadowski Exp $

USE_WXNEEDED =	Yes

COMMENT =	letter order game
DISTNAME =	kanagram-${VERSION}
CATEGORIES =	education x11

HOMEPAGE =	https://edu.kde.org/kanagram/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KEduVocDocument KF5Attica KF5Auth
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5Declarative KF5I18n KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Package KF5Service KF5SonnetCore
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5TextToSpeech Qt5Widgets Qt5Xml c
WANTLIB += m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kio \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/kf5/kio

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/kde-applications/libkeduvocdocument \
		x11/qt5/qtdeclarative \
		x11/qt5/qtspeech

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
