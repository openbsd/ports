COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.17.1
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
SITES=		https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	3.1

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} expat fontconfig freetype fribidi glib-2.0 \
		graphite2 harfbuzz iconv intl m pcre2-8 unibreak z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi \
		devel/harfbuzz \
		textproc/libunibreak

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ASFLAGS="-DPIC"

.include <bsd.port.mk>
