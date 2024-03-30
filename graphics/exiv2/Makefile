COMMENT=		image metadata manipulation

CATEGORIES=		graphics devel

GH_ACCOUNT=		Exiv2
GH_PROJECT=		exiv2
GH_TAGNAME=		v0.28.2
EPOCH=			0

REVISION=		0

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

CONFIGURE_ARGS=		-DEXIV2_ENABLE_NLS=ON

FIX_CRLF_FILES=		cmake/compilerFlags.cmake

# XXX ninja: error: unknown target 'test', did you mean 'tests'?
NO_TEST=		Yes

.include <bsd.port.mk>
.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DBUILD_WITH_CCACHE=0N
.endif
