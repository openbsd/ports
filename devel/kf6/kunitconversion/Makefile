COMMENT =	KDE framework for converting physical units
DISTNAME =	kunitconversion-${VERSION}

SHARED_LIBS +=  KF6UnitConversion         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6I18n Qt6Core Qt6Network m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/ki18n>=${MODKF6_VERSION}

# for tests
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
