COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.17.5
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
SITES=		https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	3.3

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	fontconfig freetype fribidi harfbuzz iconv m unibreak

MODULES=	devel/meson

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi \
		devel/harfbuzz \
		textproc/libunibreak

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Ddirectwrite=disabled \
		-Dcoretext=disabled
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS+=-Dasm=disabled \
		-Dcheckasm=disabled
.endif

.include <bsd.port.mk>
