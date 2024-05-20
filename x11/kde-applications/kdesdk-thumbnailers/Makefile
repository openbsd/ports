COMMENT =	KDE thumbnail generators for development files
DISTNAME =	kdesdk-thumbnailers-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6I18n KF6KIOCore KF6KIOGui KF6Service KF6WidgetsAddons
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets gettextpo
WANTLIB += m

MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons

.include <bsd.port.mk>
