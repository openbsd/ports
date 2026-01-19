COMMENT =	KDE thumbnail generators for development files
DISTNAME =	kdesdk-thumbnailers-${VERSION}
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	https://kde.org/applications/development/

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6KIOCore
WANTLIB += KF6KIOGui KF6Service Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += gettextpo m

MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kio \
		devel/kf6/kservice

.include <bsd.port.mk>
