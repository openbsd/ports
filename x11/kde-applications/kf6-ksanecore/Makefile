COMMENT =	KDE SANE (scanner) core library

DISTNAME =	ksanecore-${VERSION}
PKGNAME =	kf6-ksanecore-${VERSION}

CATEGORIES =	graphics devel

SHARED_LIBS +=	KSaneCore6                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6I18n Qt6Core Qt6Gui m sane

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf6/ki18n \
		graphics/sane-backends

.include <bsd.port.mk>
