# $OpenBSD: Makefile,v 1.4 2020/06/03 05:13:44 rsadowski Exp $

COMMENT =	KDE app localization tools
DISTNAME =	lokalize-${VERSION}
CATEGORIES =	x11 devel
REVISION =	1

HOMEPAGE =	https://kde.org/applications/office/org.kde.lokalize

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5KrossCore KF5KrossUi KF5Notifications
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetCore KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Sql
WANTLIB += Qt5Widgets Qt5Xml c hunspell-1.6 m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kross \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		textproc/hunspell \
		x11/qt5/qtscript

MODPY_ADJ_FILES =	scripts/xliffmerge.py

post-install:
	find ${PREFIX}/share/lokalize/scripts/odf -type f -name \*.py -exec ${MODPY_BIN_ADJ} {} +
	2to3 -w -n ${PREFIX}/share/lokalize/scripts/odf
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/apps/lokalize/scripts/ \
		${PREFIX}/share/lokalize/scripts/odf/

.include <bsd.port.mk>
