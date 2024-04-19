UNLINKED = kf6
COMMENT =	KDE desktop notifications framework
DISTNAME =	knotifications-${VERSION}

SHARED_LIBS +=  KF6Notifications          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Qml canberra m

LIB_DEPENDS =	audio/libcanberra \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
