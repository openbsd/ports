UNLINKED = kf6
COMMENT =	installation and loading of content packages in KDE
DISTNAME =	kpackage-${VERSION}

SHARED_LIBS +=  KF6Package                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6Archive KF6CoreAddons KF6I18n
WANTLIB += Qt6Core Qt6DBus c m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION}

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION}

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
