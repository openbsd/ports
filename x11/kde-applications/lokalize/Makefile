COMMENT =	KDE app localization tools
DISTNAME =	lokalize-${VERSION}
REVISION =	0
CATEGORIES =	x11 devel

HOMEPAGE =	https://kde.org/applications/office/org.kde.lokalize

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Notifications KF5Service KF5Solid KF5SonnetCore KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml X11 c hunspell-1.7 m

MODULES +=	lang/python

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
	find ${PREFIX}/share/lokalize/scripts/odf \
		-type f -name \*.py -exec ${MODPY_BIN_ADJ} {} +

.include <bsd.port.mk>
