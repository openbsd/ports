# $OpenBSD: Makefile,v 1.1.1.1 2018/08/19 06:08:18 rsadowski Exp $

COMMENT =	archiving Tool
DISTNAME =	ark-${VERSION}
CATEGORIES =	archivers

KDE5 =		Yes

SHARED_LIBS +=  kerfuffle                 0.0 # 17.08

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Parts
WANTLIB += KF5Pty KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml archive c m z zip

BUILD_DEPENDS +=devel/gettext-tools \
		archivers/bzip2 \
		archivers/unrar \
		archivers/p7zip \
		archivers/lzo2 \
		archivers/rzip

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		devel/gettext \
		archivers/bzip2 \
		archivers/unrar \
		archivers/p7zip \
		archivers/lzo2 \
		archivers/rzip

LIB_DEPENDS =	archivers/libarchive \
		archivers/libzip \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/solid \
		devel/kf5/sonnet

# for tests
PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
