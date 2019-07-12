# $OpenBSD: Makefile,v 1.17 2019/07/12 20:44:36 sthen Exp $

COMMENT =	compares and merges multiple files or directories

DISTNAME =	kdiff3-1.8.1

CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/kdiff3/

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdiff3/}
EXTRACT_SUFX =	.tar.xz

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += c m

MODULES =		devel/kf5

BUILD_DEPENDS +=	devel/gettext,-tools \
			devel/kf5/kbookmarks \
			devel/kf5/kdoctools \

RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/kf5/kbookmarks \
			devel/kf5/kdoctools \
			x11/gtk+3,-guic

LIB_DEPENDS +=		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kparts \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet

.include <bsd.port.mk>
