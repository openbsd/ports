COMMENT =	common sets for games using Mahjongg tiles
DISTNAME =	libkmahjongg-${VERSION}
CATEGORIES =	devel games

SHARED_LIBS +=	KMahjongg6                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6WidgetsAddons Qt6Core Qt6Gui Qt6Svg Qt6Widgets m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		x11/qt6/qtsvg

.include <bsd.port.mk>
