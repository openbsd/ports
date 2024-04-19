UNLINKED = kf6
COMMENT =	KDE PIM DAV protocol support library
DISTNAME =	kdav-${VERSION}

SHARED_LIBS +=  KF6DAV                    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n KF6KIOCore
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Xml m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
