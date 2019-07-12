# $OpenBSD: Makefile,v 1.30 2019/07/12 20:49:44 sthen Exp $

COMMENT =	powerful batch file renamer

VERSION =	5.0.0
DISTNAME =	krename-${VERSION}
REVISION =	0

CATEGORIES =	sysutils x11

HOMEPAGE =	http://www.krename.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5ItemViews KF5JSApi
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += c exiv2 freetype m podofo tag

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
