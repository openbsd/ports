COMMENT=		simulator of light scattering by planetary atmospheres

GH_TAGNAME=		v0.3.1
GH_ACCOUNT=		10110111
GH_PROJECT=		CalcMySky
PKGNAME=		${DISTNAME:L}

SHARED_LIBS +=	ShowMySky-Qt5             0.1 # 0.0

CATEGORIES=		astro

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets c m

MODULES=		devel/cmake \
			x11/qt5

BUILD_DEPENDS=		graphics/glm \
			math/eigen3

# !!! matches astro/stellarium
CONFIGURE_ARGS +=	-DQT_VERSION=5

CXXFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
