COMMENT =	KDE contacts access library
DISTNAME =	kcontacts-${VERSION}
CATEGORIES =	devel mail
EPOCH =		0

SHARED_LIBS +=  KF5Contacts               5.0 # 5.1

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5I18nLocaleData Qt5Core Qt5Gui m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION}

.include <bsd.port.mk>
