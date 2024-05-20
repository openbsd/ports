COMMENT =	KDE SANE (scanner) core library

DISTNAME =	ksanecore-${VERSION}

CATEGORIES =	graphics devel

MODKDE_KF5 =	Yes

SHARED_LIBS +=  KSaneCore                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5I18n Qt5Core Qt5Gui m sane

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf5/ki18n \
		graphics/sane-backends

.include <bsd.port.mk>
