COMMENT =	compares and merges multiple files or directories

DISTNAME =	kdiff3-1.9.5

CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/kdiff3/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdiff3/}
EXTRACT_SUFX =	.tar.xz

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml X11 c m

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			devel/kf5/kbookmarks \
			devel/kf5/kdoctools \

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kbookmarks \
			devel/kf5/kdoctools \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kparts \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			devel/kf5/sonnet

.include <bsd.port.mk>
