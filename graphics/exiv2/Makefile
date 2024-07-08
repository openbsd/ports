COMMENT=		image metadata manipulation

CATEGORIES=		graphics devel

DIST_TUPLE=		github Exiv2 exiv2 v0.28.3 .
EPOCH=			0

SHARED_LIBS +=  exiv2                13.0

HOMEPAGE=		https://www.exiv2.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} INIReader brotlicommon brotlidec
WANTLIB += c expat iconv inih intl m z

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		archivers/brotli \
			devel/gettext,-runtime \
			textproc/libinih

# default meson(1) options
CONFIGURE_ARGS=		-DEXIV2_ENABLE_NLS=ON \
			-DEXIV2_ENABLE_WEBREADY=ON

FIX_CRLF_FILES=		cmake/compilerFlags.cmake

# XXX ninja: error: unknown target 'test', did you mean 'tests'?
NO_TEST=		Yes

.include <bsd.port.mk>
.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DBUILD_WITH_CCACHE=0N
.endif
