# Requires OpenGL>=3.3, only usable on archs that support
# modern video cards
ONLY_FOR_ARCHS =		amd64 aarch64 i386

COMMENT =		clone of the touhou games

VERSION =		v1.3.2
DISTNAME =		taisei-${VERSION}
PKGNAME =		taisei-${VERSION:S/^v//}

CATEGORIES =		games

HOMEPAGE =		https://taisei-project.org/

# MIT
# Soundtrack: CC-BY 4.0 / Photos: PD and CC-0
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_mixer c crypto freetype m opusfile png webpdecoder
WANTLIB += z

MASTER_SITES=	https://github.com/taisei-project/taisei/releases/download/${VERSION}/

EXTRACT_SUFX=		.tar.xz

MODULES =		devel/meson \
			lang/python

MODPY_RUNDEP =		No

BUILD_DEPENDS =		math/cglm

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/opusfile \
			devel/sdl2>=2.0.5 \
			devel/sdl2-mixer>=2.0.4 \
			graphics/libwebp>=0.5 \
			graphics/png>=1.5.0

# Don't include docs
# Don't zip the ressources, it avoids using archivers/libzip
# Don't call git(1), use upstream version as version string
CONFIGURE_ARGS +=	-Ddocs=false \
			-Denable_zip=false \
			-Dversion_fallback=${VERSION}

NO_TEST =		Yes

.include <bsd.port.mk>
