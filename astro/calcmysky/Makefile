COMMENT=		simulator of light scattering by planetary atmospheres

GH_TAGNAME=		v0.1.0
GH_ACCOUNT=		10110111
GH_PROJECT=		CalcMySky
PKGNAME=		${DISTNAME:L}

SHARED_LIBS +=		ShowMySky 0.0

CATEGORIES=		astro

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Widgets c m

MODULES=		devel/cmake \
			x11/qt6

BUILD_DEPENDS=		graphics/glm \
			math/eigen3

# matches astro/stellarium
CONFIGURE_ARGS +=	-DQT_VERSION=6

CXXFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
