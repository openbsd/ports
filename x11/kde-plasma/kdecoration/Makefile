COMMENT =	plugin-based library to create KDE window decorations
DISTNAME =	kdecoration-${VERSION}

SHARED_LIBS +=	kdecorations3             0.0 # 0.0
SHARED_LIBS +=	kdecorations3private      0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6I18n Qt6Core Qt6Gui m

MODKDE_TRANSLATIONS = Yes

LIB_DEPENDS =	devel/kf6/ki18n

BUILD_DEPENDS =	graphics/vulkan-loader

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
