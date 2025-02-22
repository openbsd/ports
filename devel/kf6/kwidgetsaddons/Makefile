COMMENT =	large set of KDE widgets
DISTNAME =	kwidgetsaddons-${VERSION}

SHARED_LIBS +=  KF6WidgetsAddons          0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets m

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

CONFIGURE_ARGS +=	-DBUILD_PYTHON_BINDINGS=OFF

.include <bsd.port.mk>
