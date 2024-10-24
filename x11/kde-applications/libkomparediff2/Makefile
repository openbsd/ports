COMMENT =	library to compare files and strings
DISTNAME =	libkomparediff2-${VERSION}
PKGNAME =	kf6-libkomparediff2-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  komparediff2              2.1 # 5.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KIOCore KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
