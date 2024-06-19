COMMENT =	KDE contacts access library
DISTNAME =	kcontacts-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF6Contacts               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ConfigCore KF6CoreAddons
WANTLIB += KF6I18n KF6I18nLocaleData Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6Qml m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kcodecs>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
