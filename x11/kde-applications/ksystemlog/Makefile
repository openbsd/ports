# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 08:39:07 rsadowski Exp $

COMMENT =	system log viewer
DISTNAME =	ksystemlog-${VERSION}
CATEGORIES =	sysutils

HOMEPAGE =	https://www.kde.org/applications/system/ksystemlog/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Service KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kiconthemes\
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/sonnet

TEST_IS_INTERACTIVE = X11

.include <bsd.port.mk>
