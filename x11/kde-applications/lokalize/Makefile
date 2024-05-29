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

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Notifications KF5Service
WANTLIB += KF5Solid KF5SonnetCore KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Sql Qt5Widgets Qt5Xml X11 c hunspell-1.7
WANTLIB += m

MODKDE_KF5 = yes

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
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwindowsystem \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		textproc/hunspell

# XXX ||true: ignore error due to some old python2 syntax still around (unused)
post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/lokalize/scripts/ || true

.include <bsd.port.mk>
