# $OpenBSD: Makefile,v 1.1.1.1 2020/03/24 21:02:59 rsadowski Exp $

COMMENT =	scanning application for KDE

VERSION =	2.1.0
DISTNAME =	skanlite-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://kde.org/applications/graphics/org.kde.skanlite

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, GNU FDLv1.3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Sane
WANTLIB += KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += c m png

MASTER_SITES =	${MASTER_SITE_KDE:=stable/skanlite/${VERSION:R}/}

MODULES =	devel/kf5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		graphics/png \
		x11/kde-applications/libksane

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
