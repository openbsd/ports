COMMENT =	powerful batch file renamer

DISTNAME =	krename-5.0.3pre0

DIST_TUPLE =	kde utilities krename efe0939c354f3a21ecbf0da9571cac9ead855be3 .

CATEGORIES =	sysutils x11

HOMEPAGE =	https://apps.kde.org/krename/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets Qt6Xml c exiv2 freetype m podofo
WANTLIB += tag

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/breeze-icons \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/taglib \
		graphics/exiv2 \
		textproc/podofo \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kio \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

.include <bsd.port.mk>
