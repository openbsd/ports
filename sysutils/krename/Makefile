# $OpenBSD: Makefile,v 1.32 2020/03/31 04:42:01 rsadowski Exp $

COMMENT =	powerful batch file renamer

VERSION =	5.0.0
DISTNAME =	krename-${VERSION}
REVISION =	2

CATEGORIES =	sysutils x11

HOMEPAGE =	https://kde.org/applications/utilities/org.kde.krename

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JSApi KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c exiv2 freetype m podofo tag

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krename/${VERSION}/src/}

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/taglib \
		graphics/exiv2 \
		textproc/podofo \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
