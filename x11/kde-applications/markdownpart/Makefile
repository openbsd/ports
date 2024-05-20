COMMENT =	KPart for viewing Markdown files
DISTNAME =	markdownpart-${VERSION}
CATEGORIES =	textproc

HOMEPAGE =	https://apps.kde.org/markdownpart/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KIOCore KF6Parts KF6WidgetsAddons KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kparts \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui
		

.include <bsd.port.mk>
