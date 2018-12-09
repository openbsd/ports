# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 09:42:57 rsadowski Exp $

COMMENT =	KDE calculating fractions practicing app
DISTNAME =	kbruch-${VERSION}
CATEGORIES =	education x11

HOMEPAGE =	https://edu.kde.org/kbruch/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
